//
//  NKColorSwitchDemoViewController.m
//  NKColorSwitchDemo
//
//  Created by Naohiko Kosaka on 7/31/13.
//  Copyright (c) 2013 Naohiko Kosaka. All rights reserved.
//

#import "NKColorSwitchDemoViewController.h"
#import "NKColorSwitch.h"

@interface NKColorSwitchDemoViewController ()
@property (nonatomic, strong) IBOutlet UITableView *switchTable;
@property (nonatomic, strong) IBOutlet NKColorSwitch *nkColorSwitch;
@end

@implementation NKColorSwitchDemoViewController
@synthesize switchTable = _switchTable;
@synthesize nkColorSwitch = _nkColorSwitch;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    // Add NKSwitch
    [self.nkColorSwitch addTarget:self action:@selector(switchPressed:) forControlEvents:UIControlEventValueChanged];
    [self.nkColorSwitch setTintBorderColor:[UIColor lightGrayColor]];
    
    NKColorSwitch *nkColorSwitch1 = [[NKColorSwitch alloc] initWithFrame:CGRectMake(20, 92, 100, 50)];
    [nkColorSwitch1 addTarget:self action:@selector(switchPressed:) forControlEvents:UIControlEventValueChanged];
    [nkColorSwitch1 setTintColor:[UIColor redColor]];
    [nkColorSwitch1 setOnTintColor:[UIColor greenColor]];
    [nkColorSwitch1 setThumbTintColor:[UIColor whiteColor]];
    [self.view addSubview:nkColorSwitch1];
    
    NKColorSwitch *nkColorSwitch2 = [[NKColorSwitch alloc] initWithFrame:CGRectMake(20, 184, 60, 30)];
    [nkColorSwitch2 addTarget:self action:@selector(switchPressed:) forControlEvents:UIControlEventValueChanged];
    [nkColorSwitch2 setOnTintColor:[UIColor redColor]];
    [nkColorSwitch2 setShape:kNKColorSwitchShapeRectangle];
    [self.view addSubview:nkColorSwitch2];
    
    NKColorSwitch *nkColorSwitch3 = [[NKColorSwitch alloc] initWithFrame:CGRectMake(20, 222, 100, 50)];
    [nkColorSwitch3 addTarget:self action:@selector(switchPressed:) forControlEvents:UIControlEventValueChanged];
    [nkColorSwitch3 setTintColor:[UIColor cyanColor]];
    [nkColorSwitch3 setOnTintColor:[UIColor purpleColor]];
    [nkColorSwitch3 setThumbTintColor:[UIColor whiteColor]];
    [nkColorSwitch3 setShape:kNKColorSwitchShapeRectangle];
    [self.view addSubview:nkColorSwitch3];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark NKColorSwitch
- (void)switchPressed:(id)sender
{
    NKColorSwitch *nkswitch = (NKColorSwitch *)sender;
    if (nkswitch.isOn)
        NSLog(@"switchPressed ON");
    else
        NSLog(@"switchPressed OFF");
}

- (void)tableSwitchPressed:(id)sender
{
    NKColorSwitch *nkswitch = (NKColorSwitch *)sender;
    if (nkswitch.isOn)
        NSLog(@"tableSwitchPressed ON");
    else
        NSLog(@"tableSwitchPressed OFF");
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
        NKColorSwitch *nkColorSwitch = [[NKColorSwitch alloc] initWithFrame:CGRectMake(210, 6, 56, 30)];
        [nkColorSwitch addTarget:self action:@selector(tableSwitchPressed:) forControlEvents:UIControlEventValueChanged];
        [nkColorSwitch setTintBorderColor:[UIColor lightGrayColor]];
        [cell.contentView addSubview:nkColorSwitch];
        
        UILabel *customLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, 100, 44)];
        [customLabel setTag:100];
        [customLabel setBackgroundColor:[UIColor clearColor]];
        [cell.contentView addSubview:customLabel];
    }
    
    UILabel *customLabel = (UILabel *)[cell.contentView viewWithTag:100];
    [customLabel setText:[NSString stringWithFormat:@"Item %d", indexPath.row]];
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
