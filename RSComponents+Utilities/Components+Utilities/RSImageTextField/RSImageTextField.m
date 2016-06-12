//
// RSImageTextField.m
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

#import "RSImageTextField.h"

static CGFloat kLeftRightTextPadding = 15;
static CGFloat kLeftImagePadding = 10;
static CGFloat kTopBottomImagePadding = 8;
static CGFloat kImageHeightWidth = 24;

@implementation RSImageTextField

- (id)initWithCoder:(NSCoder *)aDecoder{
    
    self = [super initWithCoder:aDecoder];
    if (self) {
    }
    
    return self;
}

- (CGRect)textRectForBounds:(CGRect)bounds {
    
    bounds.origin.x = bounds.origin.x + kLeftImagePadding + kImageHeightWidth + kLeftRightTextPadding;
    bounds.size.width = bounds.size.width - kLeftImagePadding;
    
    return bounds;
}

- (CGRect)placeholderRectForBounds:(CGRect)bounds {
    
    bounds.origin.x = bounds.origin.x + kLeftImagePadding + kImageHeightWidth + kLeftRightTextPadding;
    bounds.size.width = bounds.size.width - kLeftImagePadding;
    
    return bounds;
}

- (CGRect)leftViewRectForBounds:(CGRect)bounds {
    
    CGRect leftViewRect = bounds;
    
    leftViewRect.origin.x = leftViewRect.origin.x + kLeftImagePadding;
    leftViewRect.origin.y = leftViewRect.origin.y + kTopBottomImagePadding;
    leftViewRect.size = CGSizeMake(kImageHeightWidth, kImageHeightWidth);
    
    return leftViewRect;
}

#pragma mark- Public methods

-(void)setLeftViewImage:(UIImage *)image {
    
    if(image){
        
        UIImageView *leftImageView = [[UIImageView alloc] initWithImage:image];
        self.leftView = leftImageView;
        self.leftViewMode = UITextFieldViewModeAlways;
    }
}

@end
