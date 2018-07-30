//
//  NewShowGalleryCollectionViewCell.h
//  BestCake3.0
//
//  Created by shoule on 2018/6/21.
//  Copyright © 2018年 shoule. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewShowGalleryCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *iconImgV;
@property (weak, nonatomic) IBOutlet UIImageView *imgV;
@property (weak, nonatomic) IBOutlet UIView *BGView;
@property (weak, nonatomic) IBOutlet UILabel *NameLB;
@property (weak, nonatomic) IBOutlet UILabel *DetailLB;
@property (weak, nonatomic) IBOutlet UILabel *PriceLB;
@property (weak, nonatomic) IBOutlet UILabel *iconLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *iconImgH;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *iconImagW;






///商品数据
//@property(nonatomic,strong)NewFor4CakeProdct *product;

@end
