//
// UIView+Additions.m
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

#import "UIView+Additions.h"

@implementation UIView (Additions)

-(void)setCornerRadius:(CGFloat)radius {
    
    self.layer.cornerRadius = radius;
    self.layer.masksToBounds = YES;
    self.clipsToBounds = YES;
}

-(void)createCircularView {
    
    self.layer.cornerRadius = self.frame.size.width / 2;
    self.layer.masksToBounds = YES;
    self.clipsToBounds = YES;
}

-(void)setBorderWidth:(CGFloat)width {
    self.layer.borderWidth = width;
}

-(void)setBorderColor:(UIColor *)color {
    self.layer.borderColor = color.CGColor;
}

-(void)setBorderWidth:(CGFloat)width andColor:(UIColor *)color {
    
    [self setBorderWidth:width];
    [self setBorderColor:color];
}

@end