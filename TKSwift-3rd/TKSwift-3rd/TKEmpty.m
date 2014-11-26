//
//  TKEmpty.m
//  TKSwift-3rd
//
//  Created by tinkl on 23/11/14.
//  Copyright (c) 2014年 ___TINKL___. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <objc/objc.h>

#include <objc/runtime.h>
void TestMetaClass(id self, SEL _cmd) {
    
    NSLog(@"This objcet is %p", self);
    NSLog(@"Class is %@, super class is %@", [self class], [self superclass]);
    
    Class currentClass = [self class];
    for (int i = 0; i < 4; i++) {
        NSLog(@"Following the isa pointer %d times gives %p", i, currentClass);
        currentClass = objc_getClass((__bridge void *)currentClass);
    }
    
    NSLog(@"NSObject's class is %p", [NSObject class]);
    NSLog(@"NSObject's meta class is %p", objc_getClass((__bridge void *)[NSObject class]));
}


#pragma mark -

void ex_registerClassPair (){
    
    Class newClass = objc_allocateClassPair([NSError class], "TestClass", 0);
    class_addMethod(newClass, @selector(testMetaClass), (IMP)TestMetaClass, "v@:");
    objc_registerClassPair(newClass);
    
    id instance = [[newClass alloc] initWithDomain:@"some domain" code:0 userInfo:nil];
    [instance performSelector:@selector(testMetaClass)];
}
/*!
 *  @author tinkl, 14-11-23 16:11:18
 *
 *  //asdf
 *
 *  @since 1.1.1
 */

@interface MyClass : NSObject <NSCopying, NSCoding>

@property (nonatomic, strong) NSArray *array;

@property (nonatomic, copy) NSString *string;

- (void)method1;

- (void)method2;

+ (void)classMethod1;

@end

//-----------------------------------------------------------
// MyClass.m

#import "MyClass.h"

@interface MyClass () {
    NSInteger       _instance1;
    
    NSString    *   _instance2;
}

@property (nonatomic, assign) NSUInteger integer;

- (void)method3WithArg1:(NSInteger)arg1 arg2:(NSString *)arg2;

@end

@implementation MyClass

+ (void)classMethod1 {
    
}

- (void)method1 {
    NSLog(@"call method method1");
}

- (void)method2 {
    
}

- (void)method3WithArg1:(NSInteger)arg1 arg2:(NSString *)arg2 {
    
    NSLog(@"arg1 : %ld, arg2 : %@", arg1, arg2);
}

@end


MyClass *myClass = [[MyClass alloc] init];
unsigned int outCount = 0;

Class cls = myClass.class;

// 类名
NSLog(@"class name: %s", class_getName(cls));


void ads()
{

    
    NSObject * objectA = [NSObject alloc] init];
    
    id newB = object_copy(objectA, class_getInstanceSize(MyClass.Class));
    
    object_setClass(newb, MyClass.Class);
    
    object_dispose(objectA);
    


}


- (void)setTapActionWithBlock:(void (^)(void))block
{
        UITapGestureRecognizer *gesture = objc_getAssociatedObject(self, &kDTActionHandlerTapGestureKey);
     
        if (!gesture)
            {
                    gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(__handleActionForTapGesture:)];
                    [self addGestureRecognizer:gesture];
                    objc_setAssociatedObject(self, &kDTActionHandlerTapGestureKey, gesture, OBJC_ASSOCIATION_RETAIN);
                }
     
        objc_setAssociatedObject(self, &kDTActionHandlerTapBlockKey, block, OBJC_ASSOCIATION_COPY);
}


- (void)setDataWithDic:(NSDictionary *)dic
{
    [dic enumerateKeysAndObjectsUsingBlock:^(NSString *key, id obj, BOOL *stop) {
        
        NSString *propertyKey = [self propertyForKey:key];
        
        if (propertyKey)
        {
            objc_property_t property = class_getProperty([self class], [propertyKey UTF8String]);
            
            // TODO: 针对特殊数据类型做处理
            NSString *attributeString = [NSString stringWithCString:property_getAttributes(property) encoding:NSUTF8StringEncoding];
            
            ...
            
            [self setValue:obj forKey:propertyKey];
        }
    }];
}





