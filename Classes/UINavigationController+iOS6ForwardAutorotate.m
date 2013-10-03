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
    return [self.visibleViewController shouldAutorotate];
}

- (NSUInteger)supportedInterfaceOrientations
{
    return [self.visibleViewController supportedInterfaceOrientations];
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return [self.visibleViewController preferredInterfaceOrientationForPresentation];
}

@end