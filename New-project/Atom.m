//
//  Atom.m
//  New-project
//
//  Created by Geraint on 2018/3/23.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import "Atom.h"


@implementation Atom

// 1、初始化方法：init()方法将chemicalElement属性支持的实例变量初始化为文本字符串None
- (id)init{
    if ((self = [super init])) {
        
        //init方法访问了 chemicalElement属性 的 实例变量_chemicalElement
        _chemicalElement = @"None";
    }
    return self;
}
/*
// 1、实例方法的实现
- (NSUInteger) massNumber{
    return 0;
}
*/
// 3、对Atom类进行重构
- (NSUInteger) massNumber {
    return self.protons + self.neutrons; // 原子数是将原子内质子数和中子数相加而得到的数值。
}


// 2、实现协议 Writer方法
// 现在Atom类遵循了Writer协议，并向Atom对象发送了一条写入消息，将化学元素"None" 名称写入一个文件中。
- (void)write:(NSFileHandle *)file{
    NSData *data = [self.chemicalElement
                    dataUsingEncoding:NSUTF8StringEncoding];
    [file writeData:data];
    [file closeFile];
    
}

@end
