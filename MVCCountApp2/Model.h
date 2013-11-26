//
//  Model.h
//  MVCCountApp
//
//  Created by 岩崎 広平 on 2013/11/26.
//  Copyright (c) 2013年 howcollect. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject

@property(readonly) int counter;

- (void)countUp;

@end
