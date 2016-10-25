//
//  SRAuthManager.m
//  SRThirdSocialPlatformDemo
//
//  Created by 郭伟林 on 16/9/14.
//  Copyright © 2016年 SR. All rights reserved.
//

#import "SRThirdSocialManager.h"
#import "SRWXManager.h"
#import "SRWBManager.h"
#import "SRQQManager.h"

@implementation SRThirdSocialManager

+ (void)registerApp {
    
    [SRWXManager registerApp];
    [SRWBManager registerApp];
}

+ (BOOL)isAppInstalled:(SRThirdSocialType)thirdSocialType {
    
    BOOL result = NO;
    
    switch (thirdSocialType) {
        case SRThirdSocialWX:
        {
            result = [SRWXManager isAppInstalled];
            break;
        }
        case SRThirdSocialWB:
        {
            result = [SRWXManager isAppInstalled];
            break;
        }
        case SRThirdSocialQQ:
        {
            result = [SRQQManager isAppInstalled];
            break;
        }
    }
    return result;
}

+ (BOOL)handleOpenURL:(NSURL *)url {
    
    if ([SRWXManager handleOpenURL:url]) {
        return YES;
    }
    if ([SRWBManager handleOpenURL:url]) {
        return YES;
    }
    if ([SRQQManager handleOpenURL:url]) {
        return YES;
    }
    return NO;
}

+ (void)authRequest:(SRThirdSocialType)thirdSocialType authSuccess:(SRAuthSuccess)authSuccess authError:(SRAuthError)authError {
    
    switch (thirdSocialType) {
        case SRThirdSocialWX:
        {
            [SRWXManager authRequestWithAuthSuccess:authSuccess authError:authError];
            break;
        }
        case SRThirdSocialWB:
        {
            [SRWBManager authRequestWithAuthSuccess:authSuccess authError:authError];
            break;
        }
        case SRThirdSocialQQ:
        {
            [SRQQManager authRequestWithAuthSuccess:authSuccess authError:authError];
            break;
        }
    }
}

+ (void)loginRequest:(SRThirdSocialType)thirdSocialType loginSuccess:(SRLoginSuccess)loginSuccess loginError:(SRLoginError)loginError {
    
    switch (thirdSocialType) {
        case SRThirdSocialWX:
        {
            [SRWXManager loginRequestWithLoginSuccess:loginSuccess loginError:loginError];
            break;
        }
        case SRThirdSocialWB:
        {
            [SRWBManager loginRequestWithLoginSuccess:loginSuccess loginError:loginError];
            break;
        }
        case SRThirdSocialQQ:
        {
            [SRQQManager loginRequestWithLoginSuccess:loginSuccess loginError:loginError];
            break;
        }
    }
}

@end