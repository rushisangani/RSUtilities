//
// RSTableViewDataSource.m
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

#import "RSTableViewDataSource.h"

@interface RSTableViewDataSource ()

@property (nonatomic, strong) NSMutableArray *dataArray;      // dataSource array
@property (nonatomic, strong) NSString *cellIdentifier;       // cell identifier
@property (nonatomic, copy) void(^TableViewCellConfiguration)(id cell, id object);

@end

@implementation RSTableViewDataSource

#pragma mark- Public methods

-(id)initWithArray:(NSMutableArray *)dataArray cellIdentifer:(NSString *)cellIdentifier andCellConfiguration:(UITableViewCellConfiguration)cellConfigurationBlock {
    
    self = [super init];
    if(self){
        
        self.dataArray = dataArray;
        self.cellIdentifier = cellIdentifier;
        self.TableViewCellConfiguration = [cellConfigurationBlock copy];
    }
    return self;
}

-(id)objectAtIndexPath:(NSIndexPath *)indexPath {
    return [self.dataArray objectAtIndex:indexPath.row];
}

#pragma mark- UITableView DataSource Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:self.cellIdentifier];
    
    id object = [self objectAtIndexPath:indexPath];
    
    if(self.TableViewCellConfiguration){
        self.TableViewCellConfiguration(cell, object);
    }
    
    return cell;
}

@end