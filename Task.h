//
//  Task.h
//  Delegates2
//
//  Created by Yung Dai on 2015-04-14.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <Foundation/Foundation.h>


// forward declration
@class Task;

// definition of the protocol
@protocol TaskDelegate <NSObject>

@optional
-(void)thisTask:(Task *)task statusHasChanged:(BOOL)done;
@end
// end of the protocol declaration section of the code.

@interface Task : NSObject

@property(strong) NSString *name;
@property(assign) BOOL done;

// this is the deletegate code
@property(assign) id<TaskDelegate> delegate;


// create a generateReport method for this class
-(void)generateReport;


@end
