//
//  Hydrogen.h
//  New-project
//
//  Created by Geraint on 2018/3/27.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import "Atom.h"

@interface Hydrogen : Atom

// 创建 Hydrogen类的初始化方法
// 该方法接受一个用于指示原子的中子数的参数
- (id) initWithNeutrons:(NSUInteger)neutrons;

// 工厂方法是指用于创建和初始化类的便捷方法，它们是类方法： + （id） 类名...
// 含有 类名前缀。类名是指类的名称，以小写字母开头
+ (id) hydrogenWithNeutrons:(NSUInteger)neutrons;

@end
