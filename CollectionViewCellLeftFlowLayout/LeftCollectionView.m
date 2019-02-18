//
//  LeftCollectionView.m
//  CollectionViewCellLeftFlowLayout
//
//  Created by le tong on 2019/2/18.
//  Copyright © 2019 iOS. All rights reserved.
//

#import "LeftCollectionView.h"
#import "LeftCollectionViewCell.h"

@interface LeftCollectionView()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic, strong) NSArray *dataArray;
@end
@implementation LeftCollectionView

- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(nonnull UICollectionViewLayout *)layout{
    if (self = [super initWithFrame:frame collectionViewLayout:layout]) {
        self.dataSource = self;
        self.delegate = self;
        self.backgroundColor = [UIColor whiteColor];
        [self registerClass:[LeftCollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    }
    return self;
}
#pragma mark -UICollectionViewDataSource
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    LeftCollectionViewCell *cell = (LeftCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.titleLabel.text = self.dataArray[indexPath.row];
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.dataArray.count;
}

#pragma mark -UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
}

#pragma mark -UICollectionViewDelegateFlowLayout
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return [self calculateItemWidthWithTextString:self.dataArray[indexPath.row]];
}
#pragma mark -计算文字长度
- (CGSize)calculateItemWidthWithTextString:(NSString *)textString{
    NSDictionary *attributeDic = @{NSFontAttributeName: [UIFont systemFontOfSize:20]};
    CGRect frame = [textString boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options: NSStringDrawingUsesLineFragmentOrigin attributes:attributeDic context:nil];
    return CGSizeMake(frame.size.width, frame.size.height);
}
- (NSArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSArray arrayWithObjects:@"塞纳河畔左岸的咖啡",@"留下唇印的嘴",@"花店玫瑰名字写错 谁",@"告白气球风吹到对街",@"你说你有点难追",@"想让我",@"礼物不需挑最贵",@"只要香榭的落叶",@"喔营造浪漫的约",@"不害怕搞砸一切", nil];
    }
    return _dataArray;
}

@end
