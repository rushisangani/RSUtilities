//
// UIViewController+AlertController.m
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

#import "UIViewController+AlertController.h"

// Button Titles
static NSString *kAlertTitle                     =  @"Alert!";
static NSString *kSuccessTitle                   =  @"Success";

static NSString *kOKButtonTitle                  =  @"OK";
static NSString *kYESButtonTitle                 =  @"Yes";
static NSString *kNOButtonTitle                  =  @"No";
static NSString *kCancelButtonTitle              =  @"Cancel";

@implementation UIViewController (AlertController)

#pragma mark- Public methods

-(UIAlertController *)showAlertWithTitle:(NSString *)title message:(NSString *)message andOkAction:(void (^)(UIAlertAction *))okActionHandler {
    
    /* create OK action */
    UIAlertAction *okAction = [self createActionWithTitle:kOKButtonTitle andHandler:okActionHandler];
    
    /* alert controller */
    UIAlertController *alertController = [self createAlertWithTitle:title message:message andActions:@[okAction]];
    
    [self presentViewController:alertController animated:YES completion:nil];
    return alertController;
}

-(UIAlertController *)showAlertWithTitle:(NSString *)title message:(NSString *)message cancelAction:(void (^)(UIAlertAction *))cancelActionHandler andOkAction:(void (^)(UIAlertAction *))okActionHandler {
    
    /* create Cancel action */
    UIAlertAction *cancelAction = [self createActionWithTitle:kCancelButtonTitle andHandler:cancelActionHandler];
    
    /* create OK action */
    UIAlertAction *okAction = [self createActionWithTitle:kOKButtonTitle andHandler:okActionHandler];
    
    /* alert controller */
    UIAlertController *alertController = [self createAlertWithTitle:title message:message andActions:@[cancelAction, okAction]];
    [self presentViewController:alertController animated:YES completion:nil];
    
    return alertController;
}

-(UIAlertController *)showAlertWithTitle:(NSString *)title message:(NSString *)message noButton:(void (^)(UIAlertAction *))noActionHandler andYesAction:(void (^)(UIAlertAction *))yesActionHandler {
    
    /* create No action */
    UIAlertAction *noAction = [self createActionWithTitle:kNOButtonTitle andHandler:noActionHandler];
    
    /* create Yes action */
    UIAlertAction *yesAction = [self createActionWithTitle:kYESButtonTitle andHandler:yesActionHandler];
    
    /* alert controller */
    UIAlertController *alertController = [self createAlertWithTitle:title message:message andActions:@[noAction, yesAction]];
    
    [self presentViewController:alertController animated:YES completion:nil];
    return alertController;
    
}

-(UIAlertController *)showAlertWithTitle:(NSString *)title message:(NSString *)message button1Title:(NSString *)button1Title button2Title:(NSString *)button2Title button1Action:(void (^)(UIAlertAction *))button1ActionHandler andButton2Action:(void (^)(UIAlertAction *))button2ActionHandler {
    
    /* create button1 action */
    UIAlertAction *button1Action = [self createActionWithTitle:button1Title andHandler:button1ActionHandler];
    
    /* create button2 action */
    UIAlertAction *button2Action = [self createActionWithTitle:button2Title andHandler:button2ActionHandler];
    
    /* alert controller */
    UIAlertController *alertController = [self createAlertWithTitle:title message:message andActions:@[button1Action, button2Action]];
    
    [self presentViewController:alertController animated:YES completion:nil];
    return alertController;
}

#pragma mark- Private methods

-(UIAlertController *)createAlertWithTitle:(NSString *)title message:(NSString *)message andActions:(NSArray *)actions {
    
    /* create alert controller */
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    /* add actions */
    for (UIAlertAction *action in actions) {
        [alertController addAction:action];
    }
    
    return alertController;
}

-(UIAlertAction *)createActionWithTitle:(NSString *)title andHandler:(void (^ __nullable)(UIAlertAction *action))handler {
    
    /* create alert action */
    return [UIAlertAction actionWithTitle:title style:UIAlertActionStyleDefault handler:handler];
}

@end
