//
//  loginViewController.m
//  testing
//
//  Created by BSA Univ21 on 12/02/14.
//  Copyright (c) 2014 BSA Univ21. All rights reserved.
//

#import "loginViewController.h"
#import "ViewController.h"
@interface loginViewController ()

@end

@implementation loginViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)pushtohome:(id)sender
{
    [self presentModalViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"] animated:YES];
}

@end
