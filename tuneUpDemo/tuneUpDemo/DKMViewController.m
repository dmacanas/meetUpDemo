//
//  DKMViewController.m
//  tuneUpDemo
//
//  Created by Dominic Macanas on 7/12/13.
//  Copyright (c) 2013 Dominic Macanas. All rights reserved.
//

#import "DKMViewController.h"

@interface DKMViewController ()

@property (nonatomic, assign) BOOL firstView;

@end

@implementation DKMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.firstView = YES;
    [self.alert1 setAccessibilityLabel:@"alert1"];
    [self.alert2 setAccessibilityLabel:@"alert2"];
//    [self.signInButton setAccessibilityLabel:@"signInButton"];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)unwindToViewControllerNameHere:(UIStoryboardSegue *)segue {
    //nothing goes here
}

- (IBAction)showAlert1:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert 1" message:@"This is an Alert message and I have two buttons!" delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
    [alert show];
}
- (IBAction)showAlert2:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert 1" message:@"This is an Alert message and I have two buttons!" delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
    
    UIAlertView *alert2 = [[UIAlertView alloc] initWithTitle:@"Alert 2" message:@"I'm a different alert message" delegate:nil cancelButtonTitle:@"Go Away" otherButtonTitles:nil];
    int alertChoice = rand()%2;
    
    if(self.firstView){
        [alert2 show];
        self.firstView = NO;
        return;
    }
    
    if(alertChoice == 0){
        [alert show];
    }else{
        [alert2 show];
    }
}
@end
