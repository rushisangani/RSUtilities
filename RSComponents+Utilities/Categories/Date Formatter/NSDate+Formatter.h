//
// NSDate+Formatter.h
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

#import <Foundation/Foundation.h>

@interface NSDate (Formatter)

/* global date formatter */

+(NSDateFormatter *) dateFormatter;

/* Get date from strig with specified format */

+(NSDate *)getDateFromString:(NSString *)dateString withFormat:(NSString *)dateFormat;

/* Get string from date with specified format */

+(NSString *)getStringFromDate:(NSDate *)date withFormat:(NSString *)dateFormat;

/* Convert dateString with format to specified format */

+(NSString *)convertDateString:(NSString *)dateString withFormat:(NSString *)dateFormat toFormat:(NSString *)toFormat;

/* Convert Date with format to specified format */

+(NSDate *)convertDate:(NSDate *)date withFormat:(NSString *)dateFormat toFormat:(NSString *)toFormat;

/* Date Comparision */

-(BOOL)isToday;

-(BOOL)isPastDate;

-(BOOL)isFutureDate;

-(BOOL)isGreaterThan:(NSDate *)date;

-(BOOL)isLessThan:(NSDate *)date;

@end
