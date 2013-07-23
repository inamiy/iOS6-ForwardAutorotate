//
//  UITabBarController+iOS6ForwardAutorotate.m
//  iOS6ForwardAutorotate
//
//  Created by Inami Yasuhiro on 12/10/10.
//  Copyright (c) 2012年 Inami Yasuhiro. All rights reserved.
//

#import "UITabBarController+iOS6ForwardAutorotate.h"

@implementation UITabBarController (iOS6ForwardAutorotate)

- (BOOL)shouldAutorotate
{
    return [self.selectedViewController shouldAutorotate];
}

- (NSUInteger)supportedInterfaceOrientations
{
    return [self.selectedViewController supportedInterfaceOrientations];
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return [self.selectedViewController preferredInterfaceOrientationForPresentation];
}

@end
