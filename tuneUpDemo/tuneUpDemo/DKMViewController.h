//
//  DKMViewController.h
//  tuneUpDemo
//
//  Created by Dominic Macanas on 7/12/13.
//  Copyright (c) 2013 Dominic Macanas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DKMViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIBarButtonItem *signInButton;
- (IBAction)unwindToViewControllerNameHere:(UIStoryboardSegue *)segue;
@property (weak, nonatomic) IBOutlet UIButton *alert1;
- (IBAction)showAlert1:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *alert2;
- (IBAction)showAlert2:(id)sender;

@end
