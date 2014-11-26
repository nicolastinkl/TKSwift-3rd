//
//  TKRuntimeBlock.m
//  TKSwift-3rd
//
//  Created by tinkl on 23/11/14.
//  Copyright (c) 2014年 ___TINKL___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface MyRuntimeBlock : NSObject



@end


@implementation MyRuntimeBlock


/*!
 *  @author tinkl, 14-11-23 19:11:25
 *
 *  <#Description#>
 *
 *  @since <#version number#>
 */
- (void) findBlock
{

//
    IMP imp = imp_implementationWithBlock(^(id obj, NSString *str) {
        NSLog(@"%@",str);
        
    });
    
    
    class_addMethod(MyRuntimeBlock.class,@selector(findBlock), imp, "v@:@");
    
    
 
//    objc_loadWeak(__autoreleasing id *location)
//    objc_storeWeak(__autoreleasing id *location, id obj)
    
}

@end

