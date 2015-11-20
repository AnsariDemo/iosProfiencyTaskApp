//
//  Services.h
//  ProfiencySample
//
//  Created by Ansari on 11/19/15.
//  Copyright (c) 2015 Ansari. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ServiceHelper : NSObject

typedef void (^CompletionBlock)(NSDictionary *response, NSError *error);
+(void)getFeedResponseForUrl:(NSString *)url withCallback:(CompletionBlock)callback;
@end
