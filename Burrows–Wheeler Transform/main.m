//
//  main.m
//  Burrows–Wheeler Transform
//
//  Created by Han Gyu Park on 6/9/15.
//  Copyright (c) 2015 Han Gyu Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "bwt.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSString* original = @"#shesellsseashells";
        NSString* encoded = @"seshshsseelllsea#l";
        NSLog([BWT encode:original]);
        NSLog([BWT decode:encoded]);
    }
    return 0;
}
