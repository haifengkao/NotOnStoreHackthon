//
//  ViewController.m
//  NotOnStore
//
//  Created by Lono on 9/27/14.
//  Copyright (c) 2014 cocoaspice. All rights reserved.
//

#import "ViewController.h"
#import <PPRevealSideViewController.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)openLeftDeck:(id)sender
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:[[NSBundle mainBundle].infoDictionary objectForKey:@"UIMainStoryboardFile"] bundle:[NSBundle mainBundle]];

    UIViewController* leftVC = [storyboard instantiateViewControllerWithIdentifier:@"CategoryViewController"];
    
    [self.revealSideViewController pushViewController:leftVC onDirection:PPRevealSideDirectionLeft animated:YES];
}
@end
