//
//  menuViewController.m
//  testing
//
//  Created by BSA Univ21 on 07/02/14.
//  Copyright (c) 2014 BSA Univ21. All rights reserved.
//

#import "menuViewController.h"
#import "ViewController.h"
#import "addbookViewController.h"
#import "statusViewController.h"
#import "settingViewController.h"

@interface menuViewController ()

@end

@implementation menuViewController

@synthesize data,index,tableview;
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
       [self menuprocess];
    [super viewDidLoad];
	// Do any additional setup after loading the view.

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)menuprocess
{
    data=[[NSArray alloc] initWithObjects:@" ",@" ",@" ",nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [data count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=nil;
    cell=[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
cell.textLabel.text=[data objectAtIndex:indexPath.row];

//if(index==0)
//{
// [self pushtoaddbook];
//}
//    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
   
    return cell;
}
//-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    
//    menuViewController *menu=[[menuViewController alloc]initWithNibName:@"menuViewController" bundle:nil];
//    
//    if([[data objectAtIndex:indexPath.row] isEqual:@"AddBook"])
//    {
//        menu.index=0;
//    }
//
//    if(indexPath.row==0)
//    {
//        NSLog(@"done");
//    }
//    
//    addbookViewController *add = [[addbookViewController alloc] init];
//    
//    if(indexPath.row==0)
//    {
//    [self.navigationController pushViewController: add animated:YES];
//    }
//
//    if (indexPath.row==0)
//           {
//               NSLog(@"hello");
//               [self pushtoaddbook];
//           }
//
//}

- (IBAction)backtohome:(id)sender
{
    [self back];
}

- (IBAction)pushtobook:(id)sender
{
    [self pushtoaddbook];
}
- (IBAction)pushtostatus
{
    [self pushtostatus1];
}
- (IBAction)pushtosetting
{
    [self pushtosetting1];
}
- (void)pushtoaddbook
{

   [self presentModalViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"addbookViewController"] animated:YES];

}

- (void)pushtostatus1
{
   [self presentModalViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"statusViewController"] animated:YES];
}
- (void)pushtosetting1
{
   [self presentModalViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"settingViewController"] animated:YES];
}

- (void)back
{
    [self presentModalViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"] animated:YES];
}



//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath
//                                                                    *)indexPath {
//    
//    [tableView deselectRowAtIndexPath:indexPath animated:YES];
//    
//    if([[data objectAtIndex:indexPath.row] isEqualToString:@"AddBook"])
//    {
//       addbookViewController *add = [[addbookViewController alloc]
//                                    initWithNibName:@"addbookViewController" bundle:nil];
//        [self.navigationController pushViewController:add animated:YES];
//    }
//    
////    else if ([[contentArray objectAtIndex:indexPath.row] isEqualToString:@"Latte"])
////    {
////        LatteViewController *latte = [[LatteViewController alloc] initWithNibName:@"Latte"
////                                                                           bundle:nil];
////        [self.navigationController pushViewController:latte animated:YES];
////    }
//    
//}

//- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:  
//(NSIndexPath *)indexPath
//{
//    
//    [self tableView:tableView didSelectRowAtIndexPath:indexPath];
//}

@end
