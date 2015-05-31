//
//  UIDevice+ExtendedInfo.m
//  UIKit-Extensions
//
//  Created by Sebastian Owodziń on 30/05/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

#import "UIDevice+ExtendedInfo.h"

// used in modelIdentifier
#import <sys/utsname.h>

// used in isDebuggerConnected
#import <sys/sysctl.h>

@implementation UIDevice (ExtendedInfo)

/*!Device's exact model identifier. (read-only)
 
 Eg. @"i386", @"iPhone2,1", @"iPad3,1", etc.
 */
- (NSString *)modelIdentifier {
    struct utsname systemInfo;
    uname(&systemInfo);
    
    return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}

/*!Human-readable version of modelIdentifier. (read-only)
 
 Eg. @"iOS Simulator", @"iPhone 3GS", @"iPad Air", etc.
 */
- (NSString *)modelName {
    NSDictionary *map = @{
                          // iPhone (http://theiphonewiki.com/wiki/IPhone)
                          @"iPhone1,1": @"iPhone 1G",
                          @"iPhone1,2": @"iPhone 3G",
                          @"iPhone2,1": @"iPhone 3GS",
                          @"iPhone3,1": @"iPhone 4 (GSM)",
                          @"iPhone3,2": @"iPhone 4 (GSM Rev A)",
                          @"iPhone3,3": @"iPhone 4 (CDMA)",
                          @"iPhone4,1": @"iPhone 4S",
                          @"iPhone5,1": @"iPhone 5 (GSM)",
                          @"iPhone5,2": @"iPhone 5 (Global)",
                          @"iPhone5,3": @"iPhone 5c (GSM)",
                          @"iPhone5,4": @"iPhone 5c (Global)",
                          @"iPhone6,1": @"iPhone 5s (GSM)",
                          @"iPhone6,2": @"iPhone 5s (Global)",
                          @"iPhone7,1": @"iPhone 6 Plus",
                          @"iPhone7,2": @"iPhone 6",
                          // iPad (http://theiphonewiki.com/wiki/IPad)
                          @"iPad1,1": @"iPad 1G",
                          @"iPad2,1": @"iPad 2 (Wi-Fi)",
                          @"iPad2,2": @"iPad 2 (GSM)",
                          @"iPad2,3": @"iPad 2 (CDMA)",
                          @"iPad2,4": @"iPad 2 (Rev A)",
                          @"iPad3,1": @"iPad 3 (Wi-Fi)",
                          @"iPad3,2": @"iPad 3 (GSM)",
                          @"iPad3,3": @"iPad 3 (Global)",
                          @"iPad3,4": @"iPad 4 (Wi-Fi)",
                          @"iPad3,5": @"iPad 4 (GSM)",
                          @"iPad3,6": @"iPad 4 (Global)",
                          @"iPad4,1": @"iPad Air (Wi-Fi)",
                          @"iPad4,2": @"iPad Air (Cellular)",
                          @"iPad5,3": @"iPad Air 2 (Wi-Fi)",
                          @"iPad5,4": @"iPad Air 2 (Cellular)",
                          // iPad Mini (http://theiphonewiki.com/wiki/IPad_mini)
                          @"iPad2,5": @"iPad mini 1G (Wi-Fi)",
                          @"iPad2,6": @"iPad mini 1G (GSM)",
                          @"iPad2,7": @"iPad mini 1G (Global)",
                          @"iPad4,4": @"iPad mini 2G (Wi-Fi)",
                          @"iPad4,5": @"iPad mini 2G (Cellular)",
                          @"iPad4,7": @"iPad mini 3G (Wi-Fi)",
                          @"iPad4,8": @"iPad mini 3G (Cellular)",
                          @"iPad4,9": @"iPad mini 3G (Cellular)",
                          // iPod (http://theiphonewiki.com/wiki/IPod)
                          @"iPod1,1": @"iPod touch 1G",
                          @"iPod2,1": @"iPod touch 2G",
                          @"iPod3,1": @"iPod touch 3G",
                          @"iPod4,1": @"iPod touch 4G",
                          @"iPod5,1": @"iPod touch 5G",
                          // iOS Simulator
                          @"i386": @"iOS Simulator",
                          @"x86": @"iOS Simulator",
                          @"x86_64": @"iOS Simulator"
                          };
    
    return map[self.modelIdentifier];
}

- (BOOL)runsIOS6 {
    return NSFoundationVersionNumber >= NSFoundationVersionNumber_iOS_6_0 && NSFoundationVersionNumber <= NSFoundationVersionNumber_iOS_6_1;
}

- (BOOL)runsIOS7 {
    return NSFoundationVersionNumber >= NSFoundationVersionNumber_iOS_7_0 && NSFoundationVersionNumber <= NSFoundationVersionNumber_iOS_7_1;
}

- (BOOL)runsIOS8 {
    return NSFoundationVersionNumber > NSFoundationVersionNumber_iOS_7_1;
}

- (BOOL)isDebuggerConnected {
    int                 junk;
    int                 mib[4];
    struct kinfo_proc   info;
    size_t              size;
    
    info.kp_proc.p_flag = 0;
    
    mib[0] = CTL_KERN;
    mib[1] = KERN_PROC;
    mib[2] = KERN_PROC_PID;
    mib[3] = getpid();
    
    size = sizeof(info);
    
    junk = sysctl(mib, sizeof(mib) / sizeof(*mib), &info, &size, NULL, 0);
    assert(0 == junk);
    
    return ( (info.kp_proc.p_flag & P_TRACED) != 0 );
}

- (BOOL)isJailbroken {
#if !(TARGET_IPHONE_SIMULATOR)
    BOOL isJailbroken = NO;
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSArray *paths = @[
                       @"/Applications/Cydia.app",
                       @"/Library/MobileSubstrate/MobileSubstrate.dylib",
                       @"/bin/bash",
                       @"/usr/sbin/sshd",
                       @"/etc/apt",
                       @"/private/var/lib/apt/"
                       ];
    
    for ( NSString *path in paths ) {
        isJailbroken = isJailbroken || [fileManager fileExistsAtPath:path];
        if ( isJailbroken ) {
            return YES;
        }
    }
    
    isJailbroken = isJailbroken || [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"cydia://package/com.example.package"]];
    if ( isJailbroken ) {
        return YES;
    }
    
    FILE *f = NULL ;
    for ( NSString *path in paths ) {
        isJailbroken = isJailbroken || (f = fopen(path.UTF8String, "r"));
        fclose(f);
        if ( isJailbroken ) {
            return YES;
        }
    }
    
    NSError *error = nil;
    [@"Jailbreak test file." writeToFile:@"/private/jailbreak.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
    [fileManager removeItemAtPath:@"/private/jailbreak.txt" error:nil];
    isJailbroken = isJailbroken || (nil == error);
    if ( isJailbroken ) {
        return YES;
    }
    
#endif
    
    return NO;
}

@end
