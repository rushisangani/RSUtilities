//
// RSUserDefaults.m
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

#import "RSUserDefaults.h"

@implementation RSUserDefaults

+(void)setValue:(NSString *)value forKey:(NSString *)key {
    
    [[NSUserDefaults standardUserDefaults] setValue:value forKey:key];
    [self synchronizeUserDefaults];
}

+(void)setObject:(id)object forKey:(NSString *)key {
    
    [[NSUserDefaults standardUserDefaults] setObject:object forKey:key];
    [self synchronizeUserDefaults];
}

+(NSString *)valueForKey:(NSString *)key {
    return [[NSUserDefaults standardUserDefaults] valueForKey:key];
}

+(id)objectForKey:(NSString *)key {
    return [[NSUserDefaults standardUserDefaults] objectForKey:key];
}

+(void)removeObjectForKey:(NSString *)key {
    [self setObject:nil forKey:key];
}

+(void)setBool:(BOOL)boolValue forKey:(NSString *)key {
    
    [[NSUserDefaults standardUserDefaults] setBool:boolValue forKey:key];
    [self synchronizeUserDefaults];
}

+(BOOL)boolForKey:(NSString *)key {
    return [[NSUserDefaults standardUserDefaults] boolForKey:key];
}

+(void)synchronizeUserDefaults {
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
