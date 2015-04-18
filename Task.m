#import "Task.h"


@implementation Task


// defining the implimentation fo the generateReport method
-(void)generateReport {
    
    // the code below for the self.done ? is a boolean syntax that says "done" for true and "In Progress" for false.
    NSLog(@"%@ is %@", self.name, self.done ? @"Done" : @"In Progress");
          
}


BOOL _done;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"";
        self.done = YES;
        
        
    }
    return self;
}

// custome getter and setters

// custom setter
-(void)setDone:(BOOL)done {
    _done = done;
    [self.delegate thisTask:self statusHasChanged:done];
}


// custome getter
-(BOOL)done {
    return _done;
}

@end
