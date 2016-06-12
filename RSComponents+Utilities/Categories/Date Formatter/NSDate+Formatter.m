//
// NSDate+Formatter.m
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


#import "NSDate+Formatter.h"

@implementation NSDate (Formatter)

#pragma mark- Date Formatter

+(NSDateFormatter *)dateFormatter {
    
    static NSDateFormatter *dateFormatter;
    
    if(dateFormatter == nil){
        dateFormatter = [[NSDateFormatter alloc] init];
    }
    return dateFormatter;
}

#pragma mark- Public methods

+(NSDate *)getDateFromString:(NSString *)dateString withFormat:(NSString *)dateFormat {
    
    // set date format
    [[self dateFormatter] setDateFormat:dateFormat];
    
    // get date
    NSDate *date = [[self dateFormatter] dateFromString:dateString];
    return date;
}

+(NSString *)getStringFromDate:(NSDate *)date withFormat:(NSString *)dateFormat {
    
    // set date format
    [[self dateFormatter] setDateFormat:dateFormat];
    
    // get string
    NSString *dateInString = [[self dateFormatter] stringFromDate:date];
    return dateInString;
}

+(NSString *)convertDateString:(NSString *)dateString withFormat:(NSString *)dateFormat toFormat:(NSString *)toFormat {
    
    // get date from string
    NSDate *date = [self getDateFromString:dateString withFormat:dateFormat];
    
    // get string from date with new format
    NSString *convertedString = [self getStringFromDate:date withFormat:toFormat];
    return convertedString;
}

+(NSDate *)convertDate:(NSDate *)date withFormat:(NSString *)dateFormat toFormat:(NSString *)toFormat {
    
    // get string from date
    NSString *string = [self getStringFromDate:date withFormat:dateFormat];
    
    // get date with new format
    NSDate *convertedDate = [self getDateFromString:string withFormat:toFormat];
    return convertedDate;
}

- (BOOL)isToday {
    return ([self compare:[NSDate date]] == NSOrderedSame);
}

-(BOOL)isPastDate {
    return ([self compare:[NSDate date]] == NSOrderedAscending);
}

-(BOOL)isFutureDate {
    return ([self compare:[NSDate date]] == NSOrderedDescending);
}

- (BOOL)isGreaterThan:(NSDate *)date {
    return ([self compare:date] == NSOrderedDescending);
}

- (BOOL)isLessThan:(NSDate *)date {
    return ([self compare:date] == NSOrderedAscending);
}

@end
