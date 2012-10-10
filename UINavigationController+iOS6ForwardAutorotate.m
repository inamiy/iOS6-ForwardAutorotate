//
//  UINavigationController+iOS6ForwardAutorotate.m
//  iOS6ForwardAutorotate
//
//  Created by Inami Yasuhiro on 12/10/10.
//  Copyright (c) 2012年 Inami Yasuhiro. All rights reserved.
//

#import "UINavigationController+iOS6ForwardAutorotate.h"

@implementation UINavigationController (iOS6ForwardAutorotate)

- (BOOL)shouldAutorotate
{
    return [self.viewControllers.lastObject shouldAutorotate];
}

- (NSUInteger)supportedInterfaceOrientations
{
    return [self.viewControllers.lastObject supportedInterfaceOrientations];
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return [self.viewControllers.lastObject preferredInterfaceOrientationForPresentation];
}

@end