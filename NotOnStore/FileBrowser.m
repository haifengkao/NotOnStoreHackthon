//
//  FileBrowser.m
//  NotOnStore
//
//  Created by Lono on 9/27/14.
//  Copyright (c) 2014 cocoaspice. All rights reserved.
//

#import "FileBrowser.h"

@interface FileBrowser ()

@end

@implementation FileBrowser

- (id)initWithCoder:(NSCoder*)coder
{
    NSString *startingPath = @"/Users/Lono/tmp/APK";
    self = [self initWithPath:startingPath];
    return self;
}
- (void)awakeFromNib
{
    [super awakeFromNib];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)closeButton:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
