//
//  TableViewController.m
//  TodoList
//
//  Created by Luke Wilkinson on 2014/07/23.
//  Copyright (c) 2014 OddDog. All rights reserved.
//

#import "RHTaskListViewController.h"
#import "RHAddTaskViewController.h"
#import "RHTask.h"
#import "RHEditTaskViewController.h"

@implementation RHTaskListViewController

@synthesize tasks = _tasks;

-(id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self)
    {
        //custom
    }
    return self;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (void)viewDidLoad
{
  
    
    [super viewDidLoad];
    
    self.tasks = [[NSMutableArray alloc] init];
}




- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
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

//Segue from Add task to task list
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"AddTaskSegue"])
    {
        
        UINavigationController *navCon = segue.destinationViewController;
        
        RHAddTaskViewController *addTaskViewController = [navCon.viewControllers objectAtIndex:0];
        
        addTaskViewController.taskListViewController = self;
        
    }
    
    
    else if ([segue.identifier isEqualToString:@"EditDoneTaskSegue"] || [segue.identifier isEqualToString:@"EditNotDoneTaskSegue"])
    {
        RHEditTaskViewController *editTaskViewController = segue.destinationViewController;
        editTaskViewController.task = [self.tasks objectAtIndex:self.tableView.indexPathForSelectedRow.row];
    }
    
    

}
//Segue from Add task to task list


//Move Items
-(void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
    RHTask *movedTask = [self.tasks objectAtIndex:fromIndexPath.row];
    [self.tasks removeObjectAtIndex:fromIndexPath.row];
    [self.tasks insertObject:movedTask atIndex:toIndexPath.row];
}

-(BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}
//Move Items


//Delete Items
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        [self.tasks removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
    
    else if (editingStyle == UITableViewCellEditingStyleInsert)
    {
        
    }
}
//Delete Items

 
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tasks.count;
}



-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *NotDoneCellIdentifier = @"NotDoneTaskCell";
    static NSString *DoneCellIdentifier = @"DoneTaskCell";
    
    RHTask *currentTask = [self.tasks objectAtIndex:indexPath.row];
    
    NSString *cellIdentifier = currentTask.done ? DoneCellIdentifier : NotDoneCellIdentifier;
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }

    
    cell.textLabel.text = currentTask.name;

    
    return cell;
}



#pragma mark - IBActions

-(void)editButtonPressed:(id)sender
{
    self.editing = !self.editing;
}

@end
