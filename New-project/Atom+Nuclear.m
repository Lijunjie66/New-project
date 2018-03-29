//
//  Atom+Nuclear.m
//  New-project
//
//  Created by Geraint on 2018/3/27.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import "Atom+Nuclear.h"


@implementation Atom (Nuclear)

// 实现了Number分类，从而向Atom类及其子类添加了atomicNumber方法
- (NSUInteger) atomicNumber {
    return self.protons;
}


@end
