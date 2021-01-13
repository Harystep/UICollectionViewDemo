//
//  LastCell.m
//  TestCollectionView
//
//  Created by Chris on 2017/4/14.
//  Copyright © 2017年 Chris. All rights reserved.
//
#import "LastCell.h"
#import "Masonry.h"
@implementation LastCell
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.testLabel = [UILabel new];
        [self.contentView addSubview:self.testLabel];
        self.testImage = [UIImageView new];
        [self.contentView addSubview:self.testImage];
        self.testLabel.numberOfLines = 0;
        self.testImage.backgroundColor = [UIColor redColor];
        self.testLabel.backgroundColor = [UIColor purpleColor];
        [self creatAutoLayout];
    }
    return self;
    
    
}
- (void)creatAutoLayout {
    self.testImage.image = [UIImage imageNamed:@"Icon-60"];
    [self.testImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.contentView);
        make.height.mas_equalTo(80);
        make.width.mas_equalTo(80);
        make.centerX.mas_equalTo(self.contentView.mas_centerX);
    }];
    [self.testLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.testImage.mas_bottom).offset(10.0);
        make.left.right.mas_equalTo(self.contentView);
        make.bottom.mas_equalTo(self.contentView.mas_bottom).offset(15);
    }];
    
}

//- (UICollectionViewLayoutAttributes *)preferredLayoutAttributesFittingAttributes:(UICollectionViewLayoutAttributes *)layoutAttributes {
//    [self setNeedsLayout];
//    [self layoutIfNeeded];
//    CGSize size = [self.contentView systemLayoutSizeFittingSize:layoutAttributes.size];
//    CGRect cellFrame = layoutAttributes.frame;
//    cellFrame.size.height = size.height;
//    layoutAttributes.frame = cellFrame;
//    return layoutAttributes;
//}
// 返回特定的高
//-(UICollectionViewLayoutAttributes *) preferredLayoutAttributesFittingAttributes:(UICollectionViewLayoutAttributes *)layoutAttributes {
//    [super preferredLayoutAttributesFittingAttributes:layoutAttributes];
//    UICollectionViewLayoutAttributes *attributes = [layoutAttributes copy];
//    attributes.size = CGSizeMake(80, 80);
//    return attributes;
//}

@end
