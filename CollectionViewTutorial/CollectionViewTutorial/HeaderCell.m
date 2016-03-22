//
//  HeaderCell.m
//  CollectionViewTutorial
//
//  Created by Rohit Singh on 15/11/14.
//  Copyright (c) 2014 Rohit Singh. All rights reserved.
//

#import "HeaderCell.h"

@implementation HeaderCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    
        NSArray *arrViews = [[NSBundle mainBundle] loadNibNamed:@"HeaderCell" owner:self options:nil];
        self = [arrViews objectAtIndex:0];
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
