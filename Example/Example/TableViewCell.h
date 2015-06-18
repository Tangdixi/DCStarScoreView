//
//  TableViewCell.h
//  Example
//
//  Created by Paul on 6/18/15.
//  Copyright (c) 2015 DC. All rights reserved.
//

#import "DCStarScoreView.h"

@import UIKit;

@interface TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet DCStarScoreView *starScoreView;

@end
