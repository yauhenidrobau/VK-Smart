//
//  VKLoginViewController.m
//  VK Smart
//
//  Created by Admin on 4/12/17.
//  Copyright © 2017 Yauheni Drobau. All rights reserved.
//

#import "VKLoginViewController.h"

#import "VKManager.h"
#import "NSString+VK_Smart.h"
#import "UIColor+VK_Smart.h"

@interface VKLoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIView *emailSeparator;
@property (weak, nonatomic) IBOutlet UIView *passwordSeparator;

@end

@implementation VKLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

#pragma mark- IBAction
- (IBAction)loginButtonTouched:(id)sender {
    if (![self.emailTextField.text isValidEmail]) {
        self.emailSeparator.backgroundColor = [UIColor vk_redColor];
    }else if (self.passwordTextField.text.length < 5) {
        self.emailSeparator.backgroundColor = [UIColor vk_redColor];
    } else {
        [[VKManager sharedInstance]loginWithEmail:self.emailTextField.text andPassword:self.passwordTextField.text andCompletion:^(BOOL isTrue, NSError *error) {
//            if (!error && isTrue) {
//                <#statements#>
//            }
        }];
    }
}


@end
