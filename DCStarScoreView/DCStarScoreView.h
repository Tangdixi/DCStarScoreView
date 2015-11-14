//
//  StarScoreView.h
//  Why
//
//  Created by Paul on 6/18/15.
//  Copyright (c) 2015 DC. All rights reserved.
//

#define kFillStarImage @"starFilled"
#define kEmptyStarImage @"starEmpty"

@import UIKit;

@class DCStarScoreView;

@protocol DCStarScoreViewDelegate <NSObject>

- (void)dcStarScoreViewDidTapped:(DCStarScoreView *)view;

@end

@interface DCStarScoreView : UIControl

@property (weak, nonatomic) id<DCStarScoreViewDelegate> delegate;

@property (assign, nonatomic) BOOL enableTappedRate;

@property (assign, nonatomic) NSUInteger score;
@property (assign, nonatomic) NSUInteger totalScore;

@end
