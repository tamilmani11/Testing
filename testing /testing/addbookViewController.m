//
//  addbookViewController.m
//  testing
//
//  Created by BSA Univ21 on 11/02/14.
//  Copyright (c) 2014 BSA Univ21. All rights reserved.
//

#import "addbookViewController.h"
#import "menuViewController.h"
#import "ViewController.h"

@interface addbookViewController ()

@end

@implementation addbookViewController

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

- (IBAction)pushtohome1:(id)sender
{
     [self presentModalViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"] animated:YES];
}


- (IBAction)pushtomenu:(id)sender
{
    [self presentModalViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"menuViewController"] animated:YES];
}
@end
