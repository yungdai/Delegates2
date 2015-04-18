//
//  ViewController.m
//  Delegates2
//
//  Created by Yung Dai on 2015-04-14.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // create an instance of the Project Model
    Project *project = [[Project alloc]init];
    project.listOfTasks = [[NSMutableArray alloc]init];
    project.name = @"Preprare Mail";
    
    // list of tasks
    Task *task1 = [[Task alloc]init];
    task1.name = @"Choose Menu";
    task1.delegate = project;
    [project.listOfTasks addObject:task1];
    
    // second task

    Task *task2 = [[Task alloc]init];
    task2.name = @"Second Task";
    task2.delegate = project;
    
    task2.done = TRUE;
    [project.listOfTasks addObject:task2];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
