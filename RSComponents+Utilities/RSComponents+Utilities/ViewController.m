//
//  ViewController.m
//  RSComponents+Utilities
//
//  Created by Rushi Sangani on 12/06/16.
//  Copyright © 2016 Rushi Sangani. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Additions.h"
#import "NSDictionary+RemoveNull.h"
#import "NSDate+Formatter.h"
#import "NSObject+AssociatedObject.h"
#import "NSObject+Properties.h"
#import "UIColor+Additions.h"
#import "UITextField+Additions.h"
#import "UIView+Additions.h"
#import "UIViewController+AlertController.h"
#import "RSImageTextField.h"
#import "RSTableViewDataSource.h"
#import "RSUserDefaults.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

-(void)customControlExample {
    
    RSImageTextField *textField;
    
    /* add image to UITextField */
    [textField setLeftViewImage:[UIImage imageNamed:@"icon.png"]];
    
    
    UIImageView *imageView;
    
    /* create rounded view */
    [imageView createCircularView];
    
    
    UIButton *button;
    
    /* corner radius */
    [button setCornerRadius:5.0];
    
    /* set color and border with */
    [button setBorderWidth:1.0 andColor:[UIColor blueColor]];
    
    
    /* set to user defaults */
    id object;
    
    [RSUserDefaults setObject:object forKey:@"key"];
    
    /* get object */
    object = [RSUserDefaults objectForKey:@"key"];
    
    
    /* Color */
    imageView.backgroundColor = [UIColor colorWithR:100 G:100 B:100 alpha:1];
    
    /* color using hex string */
    [button setTintColor:[UIColor colorWithHexString:@"xffff00" alpha:1]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
