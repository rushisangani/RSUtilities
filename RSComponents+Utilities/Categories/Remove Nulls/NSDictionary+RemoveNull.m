//
// NSDictionary+RemoveNull.m
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


#import "NSDictionary+RemoveNull.h"
#import "NSArray+RemoveNull.h"

@implementation NSDictionary (RemoveNull)

- (id)dictionaryByRemovingNull
{
    return [self dictionaryByRemovingNullRecursively:YES];
}

- (id)dictionaryByRemovingNullRecursively:(BOOL)recursive
{
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionaryWithDictionary:self];
    
    for (id key in [self allKeys]) {
        id object = [self objectForKey:key];
        
        if (object == [NSNull null]) {
            [dictionary removeObjectForKey:key];
        }
        
        if (recursive) {
            
            if ([object isKindOfClass:[NSDictionary class]]) {
                
                NSDictionary *subdictionary = [object dictionaryByRemovingNullRecursively:YES];
                [dictionary setValue:subdictionary forKey:key];
            }
            
            if ([object isKindOfClass:[NSArray class]]) {
                
                NSArray *subarray = [object arrayByRemovingNullRecursively:YES];
                [dictionary setValue:subarray forKey:key];
            }
        }
    }
    
    return [dictionary copy];
}

@end
