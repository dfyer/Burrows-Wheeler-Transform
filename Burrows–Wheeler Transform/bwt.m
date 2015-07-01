//
//  bwt.m
//  Burrows–Wheeler Transform
//
//  Created by Han Gyu Park on 6/9/15.
//  Copyright (c) 2015 Han Gyu Park. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "bwt.h"

@implementation BWT : NSObject
+ (NSString*) encode:(NSString*) text {
    unsigned long n = [text length];
    NSMutableArray* rawChars = [NSMutableArray arrayWithCapacity:n];
    for(unsigned i = 0; i < n; i++) {
        [rawChars addObject:[NSString stringWithFormat:@"%c", [text characterAtIndex:i]]];
    }
    
    // All rotations
    NSString* x = nil;
    NSMutableArray* table = [NSMutableArray arrayWithCapacity:n];
    for(unsigned i = 0; i < n; i++) {
        x = @"";
        unsigned k = i;
        for(unsigned j = 0; j < n; j++) {
            x = [x stringByAppendingString:[rawChars objectAtIndex:k]];
            k = (k + 1) % n;
        }
        [table addObject:x];
    }
    
    [table sortUsingSelector:@selector(localizedCompare:)];
    
    NSString* ret = @"";
    for(unsigned i = 0; i < n; i++) {
        NSString* lastChar = [NSString stringWithFormat:@"%c", [[table objectAtIndex:i] characterAtIndex:(n - 1)]];
        ret = [ret stringByAppendingString:lastChar];
    }
    
    return ret;
}
+ (NSString*) decode:(NSString*) text; {
    
    NSLog(@"%lu", (unsigned long)[text length]);
    
    // Initialize
    unsigned long n = [text length];
    NSMutableArray* table = [NSMutableArray arrayWithCapacity:n];
    for (unsigned  i = 0; i < n; i++) {
        [table addObject:@""];
    }
    
    // Prepend and Sort
    for(unsigned iter = 0; iter < n; iter++) {
        for (unsigned i = 0; i < n; i++) {
            NSString* prepended = [[NSString stringWithFormat:@"%c", [text characterAtIndex:i]] stringByAppendingString:[table objectAtIndex:i]];
            
            [table replaceObjectAtIndex:i withObject:prepended];
        }
    
        [table sortUsingSelector:@selector(localizedCompare:)];
        
        for (unsigned i = 0; i < n; i++) {
            NSLog([table objectAtIndex:i]);
        }
    }

    
    return [table objectAtIndex:0];
}
@end