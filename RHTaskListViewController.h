//
//  TableViewController.h
//  TodoList
//
//  Created by Luke Wilkinson on 2014/07/23.
//  Copyright (c) 2014 OddDog. All rights reserved.
//

#import <UIKit/UIKit.h>

//Saving the tasks



//Saving the tasks

@interface RHTaskListViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray *tasks;

-(IBAction)editButtonPressed:(id)sender;


@end