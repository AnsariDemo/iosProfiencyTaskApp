//
//  NSDictionary+safety.m
//  
//
//  Created by Ansari on 13/11/15.
//
//

#import "NSDictionary+safety.h"

@implementation NSDictionary (safety)

//================================================================================
/*
 @method        CheckForNull
 @abstract      Checking null from server respose params
 @param         id
 @return        id
 */
//================================================================================
- (id)safeObjectForKey:(id)aKey {
    NSObject *object = self[aKey];
    
    if (object == [NSNull null]) {
        return @"";
    }
    
    return object;
}
@end
