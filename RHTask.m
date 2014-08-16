//
//  ViewController.m
//  TodoList
//
//  Created by Luke Wilkinson on 2014/07/23.
//  Copyright (c) 2014 OddDog. All rights reserved.
//

#import "RHTask.h"

@implementation RHTask : NSObject 

@synthesize name = _name;
@synthesize done = _done;

-(id)initWithName:(NSString *)name done:(BOOL)done
{
    self = [super init];
    
    if (self)
    {
        self.name = name;
        self.done = done;
        
    }
    
    return self;
    
}

@end
