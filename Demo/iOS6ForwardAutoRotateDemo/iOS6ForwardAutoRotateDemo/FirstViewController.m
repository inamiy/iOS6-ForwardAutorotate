//
//  FirstViewController.m
//  iOS6ForwardAutoRotateDemo
//
//  Created by Inami Yasuhiro on 13/07/23.
//  Copyright (c) 2013年 Yasuhiro Inami. All rights reserved.
//

#import "FirstViewController.h"

#define IS_IPAD     (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)


@interface FirstViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIPopoverControllerDelegate>

@property (nonatomic) UIPopoverController* imagePopoverController;

@end


@implementation FirstViewController

// forwarded
- (BOOL)shouldAutorotate
{
//    return NO;
    return YES;
}

// forwarded
- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
//    return UIInterfaceOrientationMaskLandscape;
}

#pragma mark -

#pragma mark IBActions

- (IBAction)handlePhotoButton:(id)sender
{
    UIImagePickerControllerSourceType sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    if ([UIImagePickerController isSourceTypeAvailable:sourceType]) {
        UIImagePickerController* imagePickerC = [[UIImagePickerController alloc] init];
        imagePickerC.delegate = self;
        imagePickerC.mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:imagePickerC.sourceType];
        imagePickerC.sourceType = sourceType;
        imagePickerC.allowsEditing = YES;
        
        // if iPad, show/hide popover
        if (IS_IPAD) {
            // show
            if (!_imagePopoverController) {
                _imagePopoverController = [[UIPopoverController alloc] initWithContentViewController:imagePickerC];
                _imagePopoverController.delegate = self;
                [_imagePopoverController presentPopoverFromBarButtonItem:sender
                                                permittedArrowDirections:UIPopoverArrowDirectionAny
                                                                animated:YES];
            }
            // hide
            else {
                [_imagePopoverController dismissPopoverAnimated:YES];
                _imagePopoverController = nil;
            }
        }
        // if iPhone, show modal
        else {
            [self presentViewController:imagePickerC animated:YES completion:NULL];
        }
    }
}

#pragma mark -

#pragma mark UIImagePickerControllerDelegate

- (void)imagePickerController:(UIImagePickerController*)picker didFinishPickingMediaWithInfo:(NSDictionary*)info
{
    if (_imagePopoverController) {
        [_imagePopoverController dismissPopoverAnimated:YES];
        _imagePopoverController = nil;
    }
    else {
        [self dismissViewControllerAnimated:YES completion:NULL];
    }
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    if (_imagePopoverController) {
        [_imagePopoverController dismissPopoverAnimated:YES];
        _imagePopoverController = nil;
    }
    else {
        [self dismissViewControllerAnimated:YES completion:NULL];
    }
}

#pragma mark -

#pragma mark UIPopoverControllerDelegate

- (void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController
{
    [_imagePopoverController dismissPopoverAnimated:YES];
    _imagePopoverController = nil;
}

@end
