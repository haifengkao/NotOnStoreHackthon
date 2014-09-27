//
//  CategoryViewController.m
//  NotOnStore
//
//  Created by Lono on 9/27/14.
//  Copyright (c) 2014 cocoaspice. All rights reserved.
//

#import "CategoryViewController.h"
#import "AppViewController.h"
#import <PPRevealSideViewController.h>

@interface CategoryViewController ()
@property (nonatomic, strong) NSMutableDictionary* category;
@end

@implementation CategoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.category = [@{
                       @"色情露骨": @[
                                    @{@"image":@"girl1", @"name":@"美眉搖一搖"},
                                    @{@"image":@"girl2", @"name":@"Izumi' Sexy 3D Anime Compass Free"},
                                    @{@"image":@"girl3", @"name":@"摸摸幻想曲01"},
                                    @{@"image":@"girl4", @"name":@"萌姬初體驗02"},
                                    @{@"image":@"girl5", @"name":@"ちょっとHな桃姫物語～鬼退治？桃から生まれた巨乳の美女桃姫～"},
                                    @{@"image":@"girl6", @"name":@"ち突破姐姐防線03"},
                                    @{@"image":@"girl7", @"name":@"激萌!大魔爪04"},
                                    @{@"image":@"girl8", @"name":@"突破姐姐防線02"},
                                    @{@"image":@"girl9", @"name":@"萌の極樂"},
                                  ],
                       @"血腥暴力": @[
                                    @{@"image":@"violent1", @"name":@"暴力街區"},
                                    @{@"image":@"violent2", @"name":@"Bloody Zombie"},
                                    @{@"image":@"violent3", @"name":@"驅魔人"},
                                    @{@"image":@"violent4", @"name":@"Rift Warrior"},
                                    @{@"image":@"violent5", @"name":@"Killer Slots"},
                                    @{@"image":@"violent6", @"name":@"Ninja Warriors vs A Zombie Horde"},
                                    @{@"image":@"violent7", @"name":@"Dead Beat 2"},
                               ],
                       @"垃圾應用": @[
                                    @{@"image":@"hello1", @"name":@"hello world!"},
                                    @{@"image":@"hello2", @"name":@"hello world!"},
                                    @{@"image":@"hello3", @"name":@"Yo."},
                                    @{@"image":@"hello4", @"name":@"hello world!"},
                                    @{@"image":@"hello5", @"name":@"hello world!"},
                                    @{@"image":@"hello6", @"name":@"hello world!"},
                                    @{@"image":@"hello7", @"name":@"hello world!"},
                                    @{@"image":@"hello8", @"name":@"hello world!"},
                                    @{@"image":@"hello9", @"name":@"hello world!"},
                               
                               ]
                      
                      } mutableCopy];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = (UITableViewCell *)[self.tableView cellForRowAtIndexPath:indexPath];
    UIViewController* vc = nil;
    if (indexPath.section == 0 && indexPath.row == 1) {
        vc = [self.storyboard instantiateViewControllerWithIdentifier:@"UploadViewController"];
    } else {
        
        vc = [self.storyboard instantiateViewControllerWithIdentifier:@"AppViewController"];
        NSString* text = cell.textLabel.text;
        
        if (text.length > 0 && self.category[text] != nil) {
            UINavigationController* navi = (UINavigationController*)vc;
            AppViewController* app = (AppViewController*)navi.viewControllers.firstObject;
            app.appInfos = self.category[text];
            app.title = text;
        }
    }
    
//    UINavigationController* navi = (UINavigationController*)self.revealSideViewController.rootViewController;
    [self.revealSideViewController replaceCentralViewControllerWithNewController:vc animated:YES animationDirection:PPRevealSideDirectionLeft completion:^{
    }];
//    [navi pushViewController:vc animated:YES];
//    [self.revealSideViewController popViewControllerAnimated:YES];
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
