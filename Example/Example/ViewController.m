//
//  ViewController.m
//  Example
//
//  Created by Paul on 6/18/15.
//  Copyright (c) 2015 DC. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *data;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Just for test
    //
    _data = @[@(5),@(1),@(3),@(2),@(1),@(5),@(0),@(1),@(2),@(3),
              @(5),@(1),@(3),@(2),@(1),@(5),@(0),@(1),@(2),@(3),
              @(5),@(1),@(3),@(2),@(1),@(5),@(0),@(1),@(2),@(3),
              @(5),@(1),@(3),@(2),@(1),@(5),@(0),@(1),@(2),@(3)];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View Data Source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 40;
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TableViewCell *tableViewCell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([TableViewCell class])];
    
    tableViewCell.starScoreView.totalScore = 5;
    tableViewCell.starScoreView.score = [((NSNumber *)self.data[indexPath.row]) integerValue];
    
    return tableViewCell;
    
}


@end
