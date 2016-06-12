//
// NSObject+AssociatedObject.m
//
// Copyright (c) Rushi Sangani.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "NSObject+AssociatedObject.h"
#import "objc/runtime.h"

@implementation NSObject (AssociatedObject)
@dynamic associatedObject;

#pragma mark- Setter

-(void)setAssociatedObject:(id)associatedObject forKey:(NSString *)key {
    
    if(key){
        objc_setAssociatedObject(self, (__bridge const void *)(key), associatedObject, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    else{
        objc_setAssociatedObject(self, @selector(associatedObject), associatedObject, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}

- (void)setAssociatedObject:(id)object {
    [self setAssociatedObject:object forKey:nil];
}


#pragma mark- Getter

-(id)associatedObjectForKey:(NSString *)key {
    
    if(key){
        return objc_getAssociatedObject(self, (__bridge const void *)(key));
    }
    else{
        return objc_getAssociatedObject(self, @selector(associatedObject));
    }
}

- (id)associatedObject {
   return [self associatedObjectForKey:nil];
}

@end
