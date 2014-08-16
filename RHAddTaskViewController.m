//
//  AddTaskViewController.m
//  TodoList
//
//  Created by Luke Wilkinson on 2014/07/23.
//  Copyright (c) 2014 OddDog. All rights reserved.
//

#import "RHAddTaskViewController.h"
#import "RHTaskListViewController.h"
#import "RHTask.h"

@implementation RHAddTaskViewController

@synthesize nameField = _nameField;
@synthesize taskListViewController = _taskListViewController;


-(void)cancelButtonPressed:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void) doneButtonPressed:(id)sender
{
    RHTask *newTask = [[RHTask alloc] initWithName:self.nameField.text done:NO];

    [self.taskListViewController.tasks addObject:newTask];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}




- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
