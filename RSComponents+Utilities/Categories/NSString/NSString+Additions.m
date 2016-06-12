//
// NSString+Additions.m
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

#import "NSString+Additions.h"

@implementation NSString (Additions)

+(BOOL)isNilOrEmpty:(NSString *)string {
   return (string == nil || [string isEqualToString:@""] || string.length == 0 || string == NULL) ? YES : NO;
}

-(NSString*)trimWhiteSpacesFromString
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

-(NSString *)encodeURLString
{
    NSCharacterSet *URLCharacterSet = [NSCharacterSet URLQueryAllowedCharacterSet];
    return [self stringByAddingPercentEncodingWithAllowedCharacters:URLCharacterSet];
}

-(BOOL)isValidEmail {

    NSString *emailRegex = @"^[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}$";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    
    return [emailTest evaluateWithObject:self];
}

-(NSString *)validateString {
    
    return ([NSString isNilOrEmpty:self]) ? @"" : [self trimWhiteSpacesFromString];
}

-(NSString *)getFirstNameString {
    
    return [[self componentsSeparatedByString:@" "] firstObject];
}

-(NSString *)getLastNameString {
    
    return [[self componentsSeparatedByString:@" "] lastObject];
}

-(NSString *)getHashTagString {
    
    NSMutableString *hashTagString = [[NSMutableString alloc] init];
    
    NSArray *words = [self componentsSeparatedByString:@" "];
    for(NSString *word in words){
        
        if([word hasPrefix:@"#"]){
            [hashTagString appendString:[word stringByAppendingString:@" "]];
        }
    }
    
    return hashTagString;
}

-(NSString *)getPriceFormatString:(NSNumber *)number {
    
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    return [numberFormatter stringFromNumber:number];
}

+(NSString *)getDocumentDirectoryPathForFile:(NSString *)fileName
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES);
    NSString *documentsPath = [paths objectAtIndex:0];
    
    return [documentsPath stringByAppendingPathComponent:fileName];
}

@end
