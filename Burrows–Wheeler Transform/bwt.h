//
//  bwt.h
//  Burrows–Wheeler Transform
//
//  Created by Han Gyu Park on 6/9/15.
//  Copyright (c) 2015 Han Gyu Park. All rights reserved.
//

#ifndef Burrows_Wheeler_Transform_bwt_h
#define Burrows_Wheeler_Transform_bwt_h

@interface BWT : NSObject
+ (NSString*) encode:(NSString*) text;
+ (NSString*) decode:(NSString*) text;
@end

#endif
