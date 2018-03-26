//
//  Writer.h
//  New-project
//
//  Created by Geraint on 2018/3/23.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import <Foundation/Foundation.h>
// 协议:protocol 协议名称 <遵循NSObject协议>
@protocol Writer <NSObject>

// 协议的方法声明：这个方法声明了一个 名为write的方法，该方法将NSFileHandle的引用作为参数并且不返回任何值。
- (void)write:(NSFileHandle *)file;

@end
