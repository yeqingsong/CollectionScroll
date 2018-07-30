//
//  ViewController.m
//  CollectionScroll
//
//  Created by shoule on 2018/7/27.
//  Copyright © 2018年 yqs. All rights reserved.
//
#define  cellWith     [UIScreen mainScreen].bounds.size.width*0.6
#define centerWid    210.0/375.0*[UIScreen mainScreen].bounds.size.width
#define Screen_width      [UIScreen mainScreen].bounds.size.width
#define Screen_height      [UIScreen mainScreen].bounds.size.height
#import "ViewController.h"
#import "LineLayout.h"
#import "NewShowGalleryCollectionViewCell.h"
CGFloat cellGap = 30.0;
@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic, strong)UICollectionView* collectionVeiw;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self creatDataArray];
    LineLayout *flowLayout = [[LineLayout alloc]init];
    _collectionVeiw = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 100, Screen_width, Screen_width*0.6) collectionViewLayout:flowLayout];
    _collectionVeiw.collectionViewLayout = flowLayout;
    _collectionVeiw.delegate = self;
    _collectionVeiw.dataSource = self;
    _collectionVeiw.scrollsToTop = NO;
    _collectionVeiw.showsVerticalScrollIndicator = NO;
    _collectionVeiw.showsHorizontalScrollIndicator = NO;
    [_collectionVeiw registerNib:[UINib nibWithNibName:@"NewShowGalleryCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"cell"];

    [_collectionVeiw setContentOffset:CGPointMake(centerWid+(cellWith+cellGap)*2, 0) animated:NO];
    [_collectionVeiw reloadData];
    [self.view addSubview:_collectionVeiw];
}
-(void)creatDataArray{
    NSArray *array = @[@"启始页1242X2208-p1",@"启始页1242X2208-p2",@"启始页1242X2208-p3",@"启始页1242X2208-p4"];
    if (array.count>=3) {
        [self.dataArray addObject:array[array.count-3]];
        [self.dataArray addObject:array[array.count-2]];
        [self.dataArray addObject:array[array.count-1]];
    }else if(array.count == 2){
        [self.dataArray addObjectsFromArray:array];
        [self.dataArray addObjectsFromArray:array];
    }else if(array.count == 1){
        [self.dataArray addObjectsFromArray:array];
        [self.dataArray addObjectsFromArray:array];
        [self.dataArray addObjectsFromArray:array];
        [self.dataArray addObjectsFromArray:array];
        [self.dataArray addObjectsFromArray:array];
        
    }
    [self.dataArray addObjectsFromArray:array];
}
-(NSMutableArray*) dataArray{
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc]init];
    }
    return _dataArray;
}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.dataArray.count;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    NewShowGalleryCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    NSString* str  = self.dataArray[indexPath.row];
    cell.imgV.image = [UIImage imageNamed:str];
    return cell;
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
}
#pragma mark cell的大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(Screen_width*0.6, Screen_width*0.6);
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    if (ceil(scrollView.contentOffset.x) > (self.dataArray.count-3)*(cellWith+cellGap)+centerWid+1) {
        [_collectionVeiw setContentOffset:CGPointMake(centerWid, 0) animated:NO];
    }
    if (scrollView.contentOffset.x < (centerWid-1)) {
        [_collectionVeiw setContentOffset:CGPointMake((self.dataArray.count-3)*(cellWith+cellGap)+centerWid, 0) animated:NO];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
