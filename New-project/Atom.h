//
//  Atom.h
//  New-project
//
//  Created by Geraint on 2018/3/23.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Writer.h"   // 要使Atom接口接受这个协议，应在Atom.h文件中导入


// 原来没有添加协议时： @interface Atom : NSObject
@interface Atom : NSObject <Writer>   //遵守协议

// 属性和方法的声明
@property (readonly) NSUInteger protons;
@property (readonly) NSUInteger neutrons;
@property (readonly) NSUInteger electrons;
@property (readonly) NSString *chemicalElement;
// 实例方法
- (NSUInteger) massNumber;

@end
