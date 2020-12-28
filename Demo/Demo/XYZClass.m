//
//  XYZClass.m
//  Demo
//
//  Created by rongc on 12/27/20.
//

#import "XYZClass.h"
#import "XYZClassB.h"
#import <objc/runtime.h>

@implementation XYZClass

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    return NO;
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
   return nil;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    NSMethodSignature *signature = [super methodSignatureForSelector:aSelector];
    if (!signature) {
        if ([self respondsToSelector:@selector(XYZMethod)]) {
            signature = [XYZClassB instanceMethodSignatureForSelector:@selector(testMethod)];
        }
    }
    return signature;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    [anInvocation setSelector:@selector(XYZMethod)];
    [anInvocation invokeWithTarget:self];
}

- (void)XYZMethod {
    NSLog(@"XYZMethod is called");
}

@end
