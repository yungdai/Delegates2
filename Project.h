//
//  Project.h
//  Delegates2
//
//  Created by Yung Dai on 2015-04-14.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <Foundation/Foundation.h>

// adopt the Task delegate protocol
#import "Task.h"

// adding the TaskDelegate delegate into the Project Object
@interface Project : NSObject<TaskDelegate>

@property (strong) NSString *name;
@property (strong) NSMutableArray *listOfTasks;


@end
