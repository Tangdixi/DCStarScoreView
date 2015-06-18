//
//  StarScoreView.m
//  Why
//
//  Created by Paul on 6/18/15.
//  Copyright (c) 2015 DC. All rights reserved.
//

#import "DCStarScoreView.h"

#define kStarPadding 2

@interface DCStarScoreView ()

@property (strong, nonatomic) NSMutableArray *starViews;

@end

@implementation DCStarScoreView

- (void)setTotalScore:(NSUInteger)totalScore {
    
    // Only if the totalScore change
    //
    if (_totalScore == totalScore) {
        return;
    }
    
    // Init the starView only if the starView is nil
    //
    if (self.starViews) {
        [_starViews removeAllObjects];
        return;
    }
    
    // Init some empty star with total score
    //
    _starViews = [[NSMutableArray alloc]init];
    
    CGFloat currentCenter = 0;
    
    for (int index = 0; index < totalScore; index++) {
        
        UIImageView *imageView = [[UIImageView alloc]init];
        
        imageView.frame = CGRectMake(0, 0, self.frame.size.height, self.frame.size.height);
        imageView.center = CGPointMake(currentCenter + imageView.center.x, imageView.center.y);
        
        [self addSubview:imageView];
        [_starViews addObject:imageView];
        
        currentCenter += imageView.frame.size.width + kStarPadding;
        
    }
    
    _totalScore = totalScore;
}

- (void)setScore:(NSUInteger)score {
    
    // Only if the score change
    //
    if (_score == score && _score != 0) {
        return ;
    }
    
    // Configure the star views
    //
    UIImage *emptyStarImage = [UIImage imageNamed:kEmptyStarImage];
    UIImage *fillStarImage = [UIImage imageNamed:kFillStarImage];
    
    for (int index = 0; index < self.totalScore; index++) {
        
        if (index < score) {
            
            UIImageView *imageView = self.starViews[index];
            imageView.image = fillStarImage;
            
        }
        else {
            
            UIImageView *imageView = self.starViews[index];
            imageView.image = emptyStarImage;
            
        }
        
    }
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
