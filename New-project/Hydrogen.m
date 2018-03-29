//
//  Hydrogen.m
//  New-project
//
//  Created by Geraint on 2018/3/27.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import "Hydrogen.h"

@implementation Hydrogen

// initWithNeutrons: 方法会先调用父类Atom的初始化方法，然后设置适当的初始化值
- (id) initWithNeutrons:(NSUInteger)neutrons {
    if ((self = [super init])) {
        _chemicalElement = @"Hydrogen";   // 元素名（氢）
        _atomicSymbol = @"H";             // 原子符号（H)
        _protons = 1;                     // 质子数
        _neutrons = neutrons;             // 中子数
    }
    return self;
}

// 这个方法会为Hydrogen对象分配内存，调用这个新建实例上的initWithNeutrons:方法，然后返回新建的并已经初始化的对象
// 使用表达式 [self class] 获取当前类实例的方式
+ (id) hydrogenWithNeutrons:(NSUInteger)neutrons {
    return [[[self class] alloc] initWithNeutrons:neutrons];
}

@end
