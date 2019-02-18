
//
//  LeftCollectionViewCell.m
//  CollectionViewCellLeftFlowLayout
//
//  Created by le tong on 2019/2/18.
//  Copyright © 2019 iOS. All rights reserved.
//

#import "LeftCollectionViewCell.h"

@implementation LeftCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self.contentView addSubview:self.titleLabel];
        self.contentView.backgroundColor = [UIColor orangeColor];
        self.contentView.layer.cornerRadius = 5.f;
    }
    return self;
}
- (UILabel *)titleLabel{
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc]initWithFrame:self.bounds];
        _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.font = [UIFont systemFontOfSize:16];
    }
    return _titleLabel;
}
@end
