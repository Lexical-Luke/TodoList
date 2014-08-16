//
//  ViewController.h
//  TodoList
//
//  Created by Luke Wilkinson on 2014/07/23.
//  Copyright (c) 2014 OddDog. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RHTask : NSObject

@property (nonatomic, strong) NSString *name;

@property (nonatomic, assign) BOOL done;

-(id)initWithName: (NSString *)name done:(BOOL)done;

@end
