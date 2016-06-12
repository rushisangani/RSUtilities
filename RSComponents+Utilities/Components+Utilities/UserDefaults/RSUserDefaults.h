//
// RSUserDefaults.h
// Copyright © 2016 Rushi Sangani All rights reserved.
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

#import <Foundation/Foundation.h>

@interface RSUserDefaults : NSObject

/* Methods to set/get object to/from user defaults */

+(void)setValue:(NSString *)value forKey:(NSString *)key;
+(NSString *)valueForKey:(NSString *)key;

+(void)setObject:(id)object forKey:(NSString *)key;
+(id)objectForKey:(NSString *)key;

/* Remove object from user defaults */

+(void)removeObjectForKey:(NSString *)key;

/* set/get Bool to/from user defaults */

+(void)setBool:(BOOL)boolValue forKey:(NSString *)key;
+(BOOL)boolForKey:(NSString *)key;

@end
