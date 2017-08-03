//
//  DefaultModallyWindowAnimation.h
//  LvModallyWindow
//
//  Created by guangbool on 16/5/31.
//  Copyright © 2016年 pgbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BOOLModallyWindow.h"

@interface DefaultModallyWindowAnimation : NSObject <BOOLModallyWindowAnimating>

@property (nonatomic) UIView *touchBackgroudView;
@property (nonatomic) UIView *contentView;

@end
