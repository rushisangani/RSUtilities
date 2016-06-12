//
//  NSArray+RemoveNull.m
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


#import "NSArray+RemoveNull.h"
#import "NSDictionary+RemoveNull.h"

@implementation NSArray (RemoveNull)

- (id)arrayByRemovingNull
{
    return [self arrayByRemovingNullRecursively:YES];
}

- (id)arrayByRemovingNullRecursively:(BOOL)recursive
{
    NSMutableArray *array = [self mutableCopy];
    
    for (id object in self) {
        
        if (object == [NSNull null]) {
            [array removeObject:object];
        }
        
        if (recursive) {
            
            if ([object isKindOfClass:[NSDictionary class]]) {
                
                NSInteger index = [array indexOfObject:object];
                NSDictionary *subdictionary = [object dictionaryByRemovingNullRecursively:YES];
                [array replaceObjectAtIndex:index withObject:subdictionary];
            }
            
            if ([object isKindOfClass:[NSArray class]]) {
                
                NSInteger index = [array indexOfObject:object];
                NSArray *subarray = [object arrayByRemovingNullRecursively:YES];
                [array replaceObjectAtIndex:index withObject:subarray];
            }
        }
    }
    
    return [array copy];
}

@end
