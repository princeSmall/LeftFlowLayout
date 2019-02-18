//
//  ViewController.m
//  CollectionViewCellLeftFlowLayout
//
//  Created by le tong on 2019/2/18.
//  Copyright © 2019 iOS. All rights reserved.
//

#import "ViewController.h"
#import "LeftCollectionView.h"
#import "leftFlowLayout.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    leftFlowLayout *leftAlignedLayout = [[leftFlowLayout alloc] init];
    leftAlignedLayout.minimumLineSpacing = 10;
    leftAlignedLayout.minimumInteritemSpacing = 20;
    leftAlignedLayout.sectionInset = UIEdgeInsetsMake(20, 20, 20, 20);
    LeftCollectionView *collectionView = [[LeftCollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:leftAlignedLayout];
    [self.view addSubview:collectionView];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
