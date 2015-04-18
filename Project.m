//
//  Project.m
//  Delegates2
//
//  Created by Yung Dai on 2015-04-14.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import "Project.h"

@implementation Project

-(void)thisTask:(Task *)task statusHasChanged:(BOOL)done {
    NSLog(@"Task %@ is now %@", task.name, task.done ? @"Done" : @"In Progress");
    
}

@end
