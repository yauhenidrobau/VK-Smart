//
//  UIViewController+VK_Smart.m
//  VK Smart
//
//  Created by Admin on 4/12/17.
//  Copyright © 2017 Yauheni Drobau. All rights reserved.
//

#import "UIViewController+VK_Smart.h"

@implementation UIViewController (VK_Smart)

- (void)setupRevealViewController {
    SWRevealViewController *revealViewController = self.revealViewController;
    if (revealViewController && !self.navigationItem.leftBarButtonItem) {
        UIImage *image = [UIImage imageNamed:@"menuIcon"];
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.bounds = CGRectMake( 0, 0, image.size.width, image.size.height );
        [button setImage:[image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate] forState:UIControlStateNormal];
        button.tintColor = [UIColor whiteColor];
        [button addTarget:self.revealViewController action:@selector(revealToggle:) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *revealButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
        self.navigationItem.leftBarButtonItem = revealButtonItem;
        
        [self.navigationController.navigationBar addGestureRecognizer: self.revealViewController.panGestureRecognizer];
        UITapGestureRecognizer *tap = [revealViewController tapGestureRecognizer];
        [self.view addGestureRecognizer:tap];
        revealViewController.view.backgroundColor = [UIColor whiteColor];
        
    }
}
@end
