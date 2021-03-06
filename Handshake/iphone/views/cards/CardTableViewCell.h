//
//  MainCardTableViewCell.h
//  Handshake
//
//  Created by Sam Ober on 9/9/14.
//  Copyright (c) 2014 Handshake. All rights reserved.
//

#import "BaseTableViewCell.h"
#import "AsyncImageView.h"

@interface CardTableViewCell : BaseTableViewCell

@property (nonatomic) AsyncImageView *pictureView;
@property (nonatomic) UILabel *nameLabel;

@property (nonatomic) UILabel *cardNameLabel;

@property (nonatomic) UIButton *checkButton;
@property (nonatomic) BOOL checked;

@end
