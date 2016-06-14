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
    
    /* set padding */
    [textField setLeftPadding:15];
    
    /* set placeholder with color */
    [textField setPlaceholderText:@"type her" andColor:[UIColor lightGrayColor]];
    
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
    
    
    /* set color */
    imageView.backgroundColor = [UIColor colorWithR:100 G:100 B:100 alpha:1];
    
    /* set color using hex string */
    [button setTintColor:[UIColor colorWithHexString:@"xffff00" alpha:1]];
    
    /* remove nulls from Dictionary */
    
    NSDictionary *dictionary;
    dictionary = [dictionary dictionaryByRemovingNullRecursively:YES];
    
    /* Show Alert */
    
    /* ok button */
    [self showAlertWithTitle:@"Title" message:@"Message" andOkAction:nil];
    
    /* Ok cancel button */
    [self showAlertWithTitle:@"Title" message:@"Message" cancelAction:^(UIAlertAction *action) {
        
        /* OK action */
        
    } andOkAction:^(UIAlertAction *action) {
        
        /* Cancel action */
        
    }];
    
    /* YES, NO buttons */
    
    [self showAlertWithTitle:@"Title" message:@"Message" noButton:^(UIAlertAction *action) {
        
        /* handle NO button action */
        
    } andYesAction:^(UIAlertAction *action) {
        
        /* handle YES button action */
        
    }];
    
    /* String functions */
    
    NSString *string = @"";
    BOOL isEMpty = [NSString isNilOrEmpty:string];
    
    NSString *email;
    BOOL isvalid = [email isValidEmail];
    
    /* Get document directory path */
    NSString *myFilePath = [NSString getDocumentDirectoryPathForFile:@"filePath"];
    
    /* associated objects */
    
    UITableView *tableView;
    
    /* set object */
    tableView.associatedObject = [NSIndexPath indexPathForRow:1 inSection:0];
    
    /* get object */
    NSIndexPath *indexPath = tableView.associatedObject;
    
    
    /* Date formatter */
    
    /* convert date string to date using your desired format */
    NSDate *date = [NSDate getDateFromString:@"23 Jan 2016" withFormat:@"dd MMM yyyy"];
    
    /* get date as string to specified forat */
    NSString *dateSting = [NSDate getStringFromDate:[NSDate date] withFormat:@"MMM dd yyyy"];
    
    /* conver date string with format to your own format */
    NSString *formattedString = [NSDate convertDateString:@"23 Jan 2016" withFormat:@"dd MMM yyyy" toFormat:@"MM-dd-yyyy"];
    
    /* Date comparision */
    
    NSDate *date1 = [NSDate date];
    NSDate *date2 = [[NSDate date] dateByAddingTimeInterval:-100];
    
    BOOL isPast = [date1 isPastDate];
    BOOL isLessThan = [date1 isLessThan:date2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
