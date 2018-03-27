//
//  Atom+Nuclear.h
//  New-project
//
//  Created by Geraint on 2018/3/27.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import "Atom.h"

// @interface 类的名称 （分类的名称）
@interface Atom (Nuclear)         //分类

// 该分类声明了一个名为atomicNumber的方法，这个方法会返回一个非负整型值
- (NSUInteger) atomicNumber;

@end
