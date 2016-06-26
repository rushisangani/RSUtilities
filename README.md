# RSUtilities

A very useful utilities that includes **Custom Components** and **Categories** that save a lot of time while developing an ios application. Now code faster without writing repetative code multiple times.

## How To Use

### RSImageTextField

```objective-c
/* Set Image to UITextField */

RSImageTextField *textField;

/* add image to UITextField */
[textField setLeftViewImage:[UIImage imageNamed:@"icon.png"]];
```

### UITextField+Additions

```objective-c
/* Set padding in textField */
[textField setLeftPadding:15];

/* Set placeholder with color */
[textField setPlaceholderText:@"Enter name" andColor:[UIColor lightGrayColor]];
```

### NSString+Additions

```objective-c
/* Check for empty, nil, NULL string */

NSString *string = @"";
BOOL isEMpty = [NSString isNilOrEmpty:string];

/* check for email validation */
NSString *email;
BOOL isvalid = [email isValidEmail];

/* Get document directory path */
NSString *myFilePath = [NSString getDocumentDirectoryPathForFile:@"filePath"];
```

### UIView+Additions

```objective-c
/* Create rounded view for */

UIImageView *imageView;
[imageView createCircularView];


/* Set corner radius for */
UIButton *button;
[button setCornerRadius:5.0];

/* Set color and border with */
[button setBorderWidth:1.0 andColor:[UIColor blueColor]];
```

### Associated Objects

```objective-c
/* set associated objects for any object anywhere without declaring a property/variable */

UITableView *tableView;

/* set object */
tableView.associatedObject = [NSIndexPath indexPathForRow:1 inSection:0];

/* get object */
NSIndexPath *indexPath = tableView.associatedObject;
```

### RSUserDefaults

```objective-c
/* Set objects to user defaults */

id object;
[RSUserDefaults setObject:object forKey:@"key"];

/* get object */
object = [RSUserDefaults objectForKey:@"key"];
```

### Date Formatter

```objective-c
/* Gloabal date formatter which converts date and string To/From with any format */

/* convert date string to date using your desired format */
NSDate *date = [NSDate getDateFromString:@"23 Jan 2016" withFormat:@"dd MMM yyyy"];

/* get date as string to specified format */
NSString *dateSting = [NSDate getStringFromDate:[NSDate date] withFormat:@"MMM dd yyyy"];

/* convert date string with format to your own format */
NSString *formattedString = [NSDate convertDateString:@"23 Jan 2016" withFormat:@"dd MMM yyyy" toFormat:@"MM-dd-yyyy"];

/* Date comparision */

NSDate *date1 = [NSDate date];
NSDate *date2 = [[NSDate date] dateByAddingTimeInterval:-100];

BOOL isPast = [date1 isPastDate];
BOOL isLessThan = [date1 isLessThan:date2];
```

### Remove Nulls

```objective-c
/* Remove null values from NSDictionary or NSArrays to resolve runtime crashes */

NSDictionary *dictionary;
dictionary = [dictionary dictionaryByRemovingNullRecursively:YES];
```

### UIViewController+AlertController

```objective-c
/* Show Alert with default buttons from any UIViewController */

/* ok button */
[self showAlertWithTitle:@"Title" message:@"Message" andOkAction:nil];

/* Ok and Cancel button */

[self showAlertWithTitle:@"Title" message:@"Message" cancelAction:^(UIAlertAction *action) {
    
    /* handle Cancel action */

} andOkAction:^(UIAlertAction *action) {

    /* handle Ok action */
}];

/* YES, NO buttons */
    
[self showAlertWithTitle:@"Title" message:@"Message" noButton:^(UIAlertAction *action) {
   
    /* handle NO button action */
    
} andYesAction:^(UIAlertAction *action) {
    
    /* handle YES button action */
}];
```

## License

RSUtilities is released under the MIT license. See LICENSE for details.
