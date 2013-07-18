//
//  DKMSignInViewController.m
//  tuneUpDemo
//
//  Created by Dominic Macanas on 7/17/13.
//  Copyright (c) 2013 Dominic Macanas. All rights reserved.
//

#import "DKMSignInViewController.h"

@interface DKMSignInViewController ()

@end

@implementation DKMSignInViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.cancelButton setAccessibilityLabel:@"cancelButton"];
    [self.cancelButton setTitle:@"Cancel"];
    [self.userNameTextField setAccessibilityLabel:@"userNameTextField"];
    [self.passwordTextField setAccessibilityLabel:@"passwordTextField"];
    [self.signInButton setAccessibilityLabel:@"signInButton"];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
