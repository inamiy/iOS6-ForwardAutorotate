iOS6-ForwardAutorotate 1.0.0
============================

UIKit-additions to forward iOS6 rotation methods.

Install via [CocoaPods](http://cocoapods.org/)
----------

```
pod 'iOS6-ForwardAutorotate'
```

Code
-------

```
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
```

License
-------
`iOS6-ForwardAutorotate` is available under the [Beerware](http://en.wikipedia.org/wiki/Beerware) license.

If we meet some day, and you think this stuff is worth it, you can buy me a beer in return.