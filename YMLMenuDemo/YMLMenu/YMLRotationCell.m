//
//  Copyright © 2016年 HuberyYang. All rights reserved.
/*  😀😀😀 Blog ~> http://huberyyang.com , Email ~> yml_hubery@sina.com 😀😀😀 */

#import "YMLRotationCell.h"

@interface YMLRotationCell ()

/** 图片 */
@property (strong, nonatomic) UIImageView *imageV;

@end

@implementation YMLRotationCell

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        CGFloat w = MIN(frame.size.width, frame.size.height);
        _imageV = [[UIImageView alloc] initWithFrame:CGRectMake(frame.size.width / 2.0 - w / 2.0,
                                                                frame.size.height / 2.0 - w / 2.0,
                                                                w,
                                                                w)];
        [self addSubview:_imageV];
        _imageV.layer.cornerRadius = w / 2.0;
    }
    return self;
}

- (void)updateCellWithPicture:(NSString *)picture {
    self.imageV.image = [UIImage imageNamed:picture];
}



- (void)awakeFromNib {
    [super awakeFromNib];
}

@end
