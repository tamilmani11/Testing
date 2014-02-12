//
//  ViewController.m
//  testing
//
//  Created by BSA Univ21 on 07/02/14.
//  Copyright (c) 2014 BSA Univ21. All rights reserved.
//

#import "ViewController.h"
#import "menuViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushTomenu:(id)sender
{
[self presentModalViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"menuViewController"] animated:YES];
    

   
}
@end
