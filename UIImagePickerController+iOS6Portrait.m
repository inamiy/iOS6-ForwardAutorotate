//
//  UIImagePickerController+iOS6Portrait.m
//  iOS6ForwardAutorotate
//
//  Created by Yasuhiro Inami on 2012/10/20.
//  Copyright (c) 2012年 Yasuhiro Inami. All rights reserved.
//

#import "UIImagePickerController+iOS6Portrait.h"

@implementation UIImagePickerController (iOS6Portrait)

- (BOOL)shouldAutorotate
{
    return NO;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskPortraitUpsideDown;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationPortrait;
}

@end
