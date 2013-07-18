//
//  DKMSignInViewController.h
//  tuneUpDemo
//
//  Created by Dominic Macanas on 7/17/13.
//  Copyright (c) 2013 Dominic Macanas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DKMSignInViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *cancelButton;
@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIButton *signInButton;

@end
