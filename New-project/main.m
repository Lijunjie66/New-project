//
//  main.m
//  New-project
//
//  Created by Geraint on 2018/3/23.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Atom.h" //
#import "Atom+Nuclear.h"
#import "Hydrogen.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello World!");
        
        // 1、显示当前日期：
        NSDate *dateTime = [NSDate date];
        NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
        [dateFormat setDateFormat:@"EEE MMM d, yyyy"];
        NSString *dateString = [dateFormat stringFromDate:dateTime];
        NSLog(@"today's date is %@", dateString);
        
        // 输出：Atom类的结果: atom.chemicalElement
        Atom *atom = [[Atom alloc] init];
        NSLog(@"Atom chemical element name:%@", atom.chemicalElement); // 输出结果是 NSString 指针
        
        // 2、[atom2 atomicNumber]
        // 该分类添加了一个为Atom对象返回原子数目的实例方法
        Atom *atom2 = [[Atom alloc] init];
        NSLog(@"Atomic number = %lu",[atom2 atomicNumber]); // 输出结果是 NSUInteger 型
       
        // 3、Hydrogen类的方法输出
        //            [类名 消息名称：参数]
        Atom *atom3 = [Hydrogen hydrogenWithNeutrons:0];
        //[atom3 logInfo];
        NSLog(@"Atomic （质子数）protons = %lu",[atom3 neutrons]);
        
        id atom4 = [[Hydrogen alloc] initWithNeutrons:1];
        //[atom4 logInfo];
        NSLog(@"Atomic （原子数）electrons = %lu",[atom4 neutrons]);
        
        Hydrogen *atom5 = [Hydrogen hydrogenWithNeutrons:2];
        //[atom5 logInfo];
        NSLog(@"Atomic （中子数）neutrons = %lu",[atom5 neutrons]);
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
