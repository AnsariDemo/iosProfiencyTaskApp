//
//  Services.m
//  ProfiencySample
//
//  Created by Cognizant on 11/19/15.
//  Copyright (c) 2015 Ansari. All rights reserved.
//

#import "Services.h"
#import "Constants.h"
#import "NSDictionary+safety.h"
#import "DetailsList.h"

@implementation Services

+(void)getFeedResponseForUrl:(NSString *)url withCallback:(CompletionBlock)callback {
    
    // Create a url for json feed
    NSURL *URL = [NSURL
                  URLWithString:url];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    // Creates a session
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request
                                            completionHandler:
                                  ^(NSData *data, NSURLResponse
                                    *response, NSError *error) {
                                      
                                      NSString *feedString = [[NSString
                                                               alloc] initWithData:data encoding:NSASCIIStringEncoding];
                                      
                                      NSData *jsonData = [feedString dataUsingEncoding:NSUTF8StringEncoding];
                                      NSDictionary* json = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:&error];
                                      
                                      callback(json,error);
                                      
                                  }];
    [task resume];
}

+(void)getImagesForUrl:(NSString *)url withCallback:(CompletionBlock)callback {
    
    
}
@end
