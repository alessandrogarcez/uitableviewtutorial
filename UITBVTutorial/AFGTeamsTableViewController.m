//
//  AFGTeamsTableViewController.m
//  UITBVTutorial
//
//  Created by Alessandro Garcez on 4/15/14.
//  Copyright (c) 2014 Alessandro Garcez. All rights reserved.
//

#import "AFGTeamsTableViewController.h"

@interface AFGTeamsTableViewController ()

@end

@implementation AFGTeamsTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
    
    self.arrData = [NSMutableArray arrayWithObjects: @"Barcelona", @"Liverpool", @"Manchester United", @"Real Madrid", nil];
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.arrData.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Identifier" forIndexPath:indexPath];
    
    cell.textLabel.text = [self.arrData objectAtIndex:indexPath.row];
    
    return cell;
}

@end
