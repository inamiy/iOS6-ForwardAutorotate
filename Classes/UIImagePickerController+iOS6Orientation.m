//
//  UIImagePickerController+iOS6Orientation.m
//  iOS6ForwardAutorotate
//
//  Created by Yasuhiro Inami on 2012/10/20.
//  Copyright (c) 2012年 Yasuhiro Inami. All rights reserved.
//

#import "UIImagePickerController+iOS6Orientation.h"

@implementation UIImagePickerController (iOS6Orientation)

// NOTE: [super supportedInterfaceOrientations] returns 0, which causes crash
- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return [UIApplication sharedApplication].statusBarOrientation;
}

@end
