//
//  Utils.m
//  ProfiencySample
//
//  Created by Cognizant on 11/19/15.
//  Copyright (c) 2015 Ansari. All rights reserved.
//

#import "Utils.h"
#import "Constants.h"

@implementation Utils

// Alert Dialog
+(void)showAlert:(NSString *)text {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert"
                                                    message:text
                                                   delegate:nil
                                          cancelButtonTitle:@"Ok"
                                          otherButtonTitles:nil,nil];
    [alert show];
}

// Check Internet Connection
+(BOOL) checkReachability {
    
    CFNetDiagnosticRef dReference;
    dReference = CFNetDiagnosticCreateWithURL (NULL, (__bridge CFURLRef)[NSURL URLWithString:JSON_FEED_URL]);
    
    CFNetDiagnosticStatus status;
    status = CFNetDiagnosticCopyNetworkStatusPassively (dReference, NULL);
    
    CFRelease (dReference);
    
    if ( status == kCFNetDiagnosticConnectionUp )
        return YES;
    else
        return NO;
}
@end
