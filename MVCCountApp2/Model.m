//
//  Model.m
//  MVCCountApp
//
//  Created by 岩崎 広平 on 2013/11/26.
//  Copyright (c) 2013年 howcollect. All rights reserved.
//

#import "Model.h"

@implementation Model

-(id)init{
    self = [super init];
    if (self) {
        _counter = 0;
    }
    return self;
}
- (void)countUp
{
    [self willChangeValueForKey:@"counter"];
    _counter++;
    [self didChangeValueForKey:@"counter"];
}

@end
