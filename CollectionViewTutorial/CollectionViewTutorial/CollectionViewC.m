//
//  CollectionViewC.m
//  CollectionViewTutorial
//
//  Created by Rohit Singh on 15/11/14.
//  Copyright (c) 2014 Rohit Singh. All rights reserved.
//

#import "CollectionViewC.h"
#import "Cell.h"
#import "HeaderCell.h"

@interface CollectionViewC ()

@end

@implementation CollectionViewC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [_collectionView registerClass:[Cell class] forCellWithReuseIdentifier:@"Cell"];
    
    [_collectionView registerClass:[HeaderCell class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderCell"];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma  mark-- Collection view delegate and datasource methods--
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return  4;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    Cell *cellObj = (Cell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    cellObj.title.text = @"Cell...";
    
    return cellObj;
    

}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{

    UICollectionReusableView *reuseView = nil;
    
    if([kind isKindOfClass:[UICollectionElementKindSectionHeader class]])
        {
        
            HeaderCell *objHeader = (HeaderCell *)[collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderCell" forIndexPath:indexPath];
            
            objHeader.lblHeader.text = @"Header";
            reuseView = objHeader;
            
        }
    return reuseView;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 6;
}

@end
