//
//  Atom.h
//  New-project
//
//  Created by Geraint on 2018/3/23.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Writer.h"   // 要使Atom接口接受这个协议，应在Atom.h文件中导入


// 2、原来没有添加协议时： @interface Atom : NSObject
@interface Atom : NSObject <Writer>   //遵守协议

// 3、重构 Atom类
// 声明了作用范围为@protected的支持属性的实例变量，从而使Atom类的子类能够直接访问（和设置）这些实例变量
// 支持属性的实例变量，只能在类层次结构中访问
{
    @protected NSUInteger _protons;
    @protected NSUInteger _neutrons;
    @protected NSUInteger _electrons;
    @protected NSString *_chemicalElement;
    @protected NSString *_atomicSymbol;
}

// 1、属性和方法的声明
@property (readonly) NSUInteger protons;
@property (readonly) NSUInteger neutrons;
@property (readonly) NSUInteger electrons;
@property (readonly) NSString *chemicalElement;
// 3、添加一个用于检索Atom对象原子符号的属性
@property (readonly) NSString *atomicSymbol;

// 实例方法
- (NSUInteger) massNumber;

@end
