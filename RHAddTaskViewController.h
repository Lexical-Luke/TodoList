//
//  AddTaskViewController.h
//  TodoList
//
//  Created by Luke Wilkinson on 2014/07/23.
//  Copyright (c) 2014 OddDog. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RHTaskListViewController;

@interface RHAddTaskViewController : UITableViewController

-(IBAction)cancelButtonPressed:(id)sender;

-(IBAction)doneButtonPressed:(id)sender;

@property (nonatomic, strong) IBOutlet UITextField *nameField;

@property (nonatomic, strong) RHTaskListViewController *taskListViewController;

@end