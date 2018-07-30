//
//  NewShowGalleryCollectionViewCell.m
//  BestCake3.0
//
//  Created by shoule on 2018/6/21.
//  Copyright © 2018年 shoule. All rights reserved.
//

#import "NewShowGalleryCollectionViewCell.h"

@implementation NewShowGalleryCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}


//-(void)setProduct:(NewFor4CakeProdct *)product{
//    
//    _product = product;
//    self.BGView.layer.cornerRadius = 6;
//    self.BGView.layer.shadowColor = BSKColor(214, 247, 249).CGColor;
//    self.BGView.layer.shadowOpacity = 1;
//    self.BGView.layer.shadowRadius =8.f;
////    self.BGView.layer.shadowOffset = CGSizeMake(-4,4);
//    self.NameLB.text = _product.Name;
//    self.DetailLB.text = _product.Means;
//    self.imgV.image = nil;
//    [self.imgV sd_setImageWithURL:[NSURL URLWithString:_product.ListImg]];
//    
//    self.iconImgV.image = nil;
//    CakeListCakeType *cakeType = _product.CakeType[0];
//    NSString *oldPrice = cakeType.OldPrice.floatValue>0?[NSString stringWithFormat:@"￥%@",cakeType.OldPrice]:cakeType.OldPrice;
//    self.PriceLB.attributedText = [self returnPriceStr:oldPrice price:cakeType.CurrentPrice Yprice:@"￥" oldsize:10 pricesize:14 andSizeStr:cakeType.Size];
//    if ([self.product.ProLableList isKindOfClass:[NSArray class]]&&self.product.ProLableList.count>0) {
//        NSDictionary* dic = self.product.ProLableList[0];
//        self.iconImgH.constant = [[dic objectForKey:@"iosHight"] floatValue];
//        self.iconImagW.constant = [[dic objectForKey:@"iosWidth"] floatValue];
//
//        [self.iconImgV sd_setImageWithURL:[NSURL URLWithString:[dic objectForKey:@"PicUrl"]]];
//        self.iconLabel.text = [dic objectForKey:@"LableName"];
////        [self.iconImgV layoutIfNeeded];
//       
//    }
//    
//    [self layoutIfNeeded];
//}
//
//
//
//
//
//
//
//
//
//
//-(NSMutableAttributedString*)returnPriceStr:(NSString*)OldPrice price:(NSString*)Price  Yprice:(NSString*)YPrice oldsize:(CGFloat)OldPriceSize pricesize:(CGFloat)PriceSize andSizeStr:(NSString*)sizeStr{
//    sizeStr = [NSString stringWithFormat:@"/%@",sizeStr];
//    NSString *str = [NSString stringWithFormat:@"%@%@ %@%@",YPrice,Price,OldPrice,sizeStr];
//    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc]initWithString:str];
//    NSMutableDictionary *priceDic = [NSMutableDictionary dictionary];
//    priceDic[NSFontAttributeName] = [UIFont fontWithName:@"PingFangSC-Regular" size:PriceSize];
//    priceDic[NSForegroundColorAttributeName] = [UIColor colorWithRed:255/255.0 green:51/255.0 blue:0/255.0 alpha:1];
//    [attrStr addAttributes:priceDic range:[str rangeOfString:Price]];
//    
//    NSMutableDictionary *OldPricedic = [NSMutableDictionary dictionary];
//    OldPricedic[NSFontAttributeName]=[UIFont fontWithName:@"PingFangSC-Regular" size:OldPriceSize];
//    OldPricedic[NSForegroundColorAttributeName]=[UIColor colorWithRed:153/250.0 green:153/250.0 blue:153/250.0 alpha:1];
//    OldPricedic[NSStrikethroughStyleAttributeName]=@(NSUnderlinePatternSolid | NSUnderlineStyleSingle);
//    [attrStr addAttributes:OldPricedic range:[str rangeOfString:OldPrice]];
//    
//    
//    NSMutableDictionary *YOldPricedic = [NSMutableDictionary dictionary];
//    YOldPricedic[NSFontAttributeName]=[UIFont fontWithName:@"PingFangSC-Regular" size:OldPriceSize];
//    YOldPricedic[NSForegroundColorAttributeName]=[UIColor colorWithRed:236/255.0 green:48/255.0 blue:76/255.0 alpha:1];
////    YOldPricedic[NSStrikethroughStyleAttributeName]=@(NSUnderlinePatternSolid | NSUnderlineStyleSingle);
//    [attrStr addAttributes:YOldPricedic range:[str rangeOfString:YPrice]];
//    
//    NSMutableDictionary *SizeDic = [NSMutableDictionary dictionary];
//    SizeDic[NSFontAttributeName]=[UIFont fontWithName:@"PingFangSC-Regular" size:OldPriceSize];
//    SizeDic[NSForegroundColorAttributeName]=[UIColor colorWithRed:188/250.0 green:188/250.0 blue:188/250.0 alpha:1];
//    [attrStr addAttributes:SizeDic range:[str rangeOfString:sizeStr]];
//    return attrStr;
//}
@end
