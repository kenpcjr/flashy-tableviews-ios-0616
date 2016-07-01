//
//  FISFlashyTableViewController.m
//  V2flashy-tableviews-ios-0616
//
//  Created by Kenneth Cooke on 7/1/16.
//  Copyright © 2016 kencooke. All rights reserved.
//

#import "FISFlashyTableViewController.h"

@interface FISFlashyTableViewController ()
@property (strong, nonatomic) NSArray *testArray;
@end

@implementation FISFlashyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.tableView.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0);
    
    [self.tableView addParallaxWithImage:[UIImage imageNamed:@"coverimage.png"] andHeight:160];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 20;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 static NSString *cellIdentifier = @"Cell";
 
 SWTableViewCell *cell = (SWTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
 
 if (cell == nil) {
 cell = [[SWTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
 cell.leftUtilityButtons = [self leftButtons];
 cell.rightUtilityButtons = [self rightButtons];
 cell.delegate = self;
 }
 
 NSDate *dateObject = _testArray[indexPath.row];
 cell.textLabel.text = [dateObject description];
 cell.detailTextLabel.text = @"Some detail text";
 
 return cell;
 }
 
 - (NSArray *)rightButtons
 {
 NSMutableArray *rightUtilityButtons = [NSMutableArray new];
 [rightUtilityButtons sw_addUtilityButtonWithColor:
 [UIColor colorWithRed:0.78f green:0.78f blue:0.8f alpha:1.0]
 title:@"More"];
 [rightUtilityButtons sw_addUtilityButtonWithColor:
 [UIColor colorWithRed:1.0f green:0.231f blue:0.188 alpha:1.0f]
 title:@"Delete"];
 
 return rightUtilityButtons;
 }
 
 - (NSArray *)leftButtons
 {
 NSMutableArray *leftUtilityButtons = [NSMutableArray new];
 
 [leftUtilityButtons sw_addUtilityButtonWithColor:
 [UIColor colorWithRed:0.07 green:0.75f blue:0.16f alpha:1.0]
 icon:[UIImage imageNamed:@"check.png"]];
 [leftUtilityButtons sw_addUtilityButtonWithColor:
 [UIColor colorWithRed:1.0f green:1.0f blue:0.35f alpha:1.0]
 icon:[UIImage imageNamed:@"clock.png"]];
 [leftUtilityButtons sw_addUtilityButtonWithColor:
 [UIColor colorWithRed:1.0f green:0.231f blue:0.188f alpha:1.0]
 icon:[UIImage imageNamed:@"cross.png"]];
 [leftUtilityButtons sw_addUtilityButtonWithColor:
 [UIColor colorWithRed:0.55f green:0.27f blue:0.07f alpha:1.0]
 icon:[UIImage imageNamed:@"list.png"]];
 
 return leftUtilityButtons;
 }
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
