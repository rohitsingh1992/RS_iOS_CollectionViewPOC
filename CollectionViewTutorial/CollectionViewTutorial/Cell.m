//
//  Cell.m
//  CollectionViewTutorial
//
//  Created by Rohit Singh on 15/11/14.
//  Copyright (c) 2014 Rohit Singh. All rights reserved.
//

#import "Cell.h"

@implementation Cell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        NSArray *arrOfViews = [[NSBundle mainBundle] loadNibNamed:@"Cell" owner:self options:nil];
        self = [arrOfViews objectAtIndex:0];
        // Initialization code
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
