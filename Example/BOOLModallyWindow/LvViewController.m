//
//  LvViewController.m
//  BOOLModallyWindow
//
//  Created by pgbo on 07/13/2015.
//  Copyright (c) 2015 pgbo. All rights reserved.
//

#import "LvViewController.h"
#import "BOOLModallyWindow.h"
#import "DefaultModallyWindowAnimation.h"

@interface LvViewController () <BOOLModallyWindowDelegate>

@property (nonatomic) BOOLModallyWindow *modelWindow;

@end

@implementation LvViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.userInteractionEnabled = YES;
    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(viewTap:)]];
}

- (void)viewTap:(UITapGestureRecognizer *)tap
{
    [self.modelWindow showWithAnimated:YES];
}

- (BOOLModallyWindow *)modelWindow
{
    if (!_modelWindow) {
        _modelWindow = [[BOOLModallyWindow alloc]initWithPreferStatusBarHidden:NO
                                                      preferStatusBarStyle:UIStatusBarStyleLightContent
                                              supportedOrientationPortrait:NO
                                    supportedOrientationPortraitUpsideDown:NO
                                         supportedOrientationLandscapeLeft:NO
                                        supportedOrientationLandscapeRight:NO
                                                          windowEdgeInsets:UIEdgeInsetsMake(0, 10, 100, 10)];
        _modelWindow.modallyWindowDelegate = self;
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 100, CGRectGetWidth(self.view.bounds), 64)];
        [_modelWindow.windowRootView addSubview:label];
        
        label.text = @"😄我显示出来了, 再点我就会消失";
        label.backgroundColor = [UIColor blueColor];
        label.textColor = [UIColor blackColor];
        label.textAlignment = NSTextAlignmentCenter;
        
        label.userInteractionEnabled = YES;
        [label addGestureRecognizer:[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dismissModelWindow)]];
        
        _modelWindow.modallyWindowAnimation = ({
            DefaultModallyWindowAnimation *animation = [[DefaultModallyWindowAnimation alloc]init];
            animation.touchBackgroudView = _modelWindow.backgroudView;
            animation.contentView = label;
            animation;
        });
    }
    return _modelWindow;
}

- (void)dismissModelWindow
{
    [_modelWindow dismissWithAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - BOOLModallyWindowDelegate

- (void)modallyWindowDidDismiss:(BOOLModallyWindow *)modallyWindow
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

@end
