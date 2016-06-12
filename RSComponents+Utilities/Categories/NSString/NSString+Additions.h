//
// NSString+Additions.h
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

@interface NSString (Additions)

// Checks if string is nil

+(BOOL)isNilOrEmpty:(NSString *)string;

// Remove white space from string

-(NSString*)trimWhiteSpacesFromString;

// Convert string to encoding format

-(NSString*)encodeURLString;

// Check If email is valid

-(BOOL)isValidEmail;

// validate any string

-(NSString *)validateString;

// seperate firstname / lastname from fullname

-(NSString *)getFirstNameString;
-(NSString *)getLastNameString;

// Get string with hash tags from given string

-(NSString *)getHashTagString;

// Get formatted number value as string

-(NSString *)getPriceFormatString:(NSNumber *)number;

// Get Document directory path

+(NSString *)getDocumentDirectoryPathForFile:(NSString *)fileName;

@end
