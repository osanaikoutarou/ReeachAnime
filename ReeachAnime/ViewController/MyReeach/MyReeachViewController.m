//
//  MyReeachViewController.m
//  ReeachAnime
//
//  Created by 長内幸太郎 on 2016/06/06.
//  Copyright © 2016年 長内幸太郎. All rights reserved.
//

#import "MyReeachViewController.h"
#import "MyReeachTableViewCell.h"

@interface MyReeachViewController () <UITableViewDelegate,UITableViewDataSource>

@end

@implementation MyReeachViewController {
	__weak IBOutlet UITableView *myReeachTableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
	myReeachTableView.delegate = self;
	myReeachTableView.dataSource = self;
}

#pragma mark - tableview 

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
	return 123;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	NSString *identifier = @"MyReeachTableViewCell";
	
	MyReeachTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
	if (!cell) {
		cell = [[MyReeachTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
	}
	
	return cell;
}



@end
