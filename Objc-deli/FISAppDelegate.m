//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

/*
 
 *  Define your methods here!
 
 */

-(NSString *)stringWithDeliLine:(NSArray *)deliLine
{
    if ([deliLine count] == 0){ // if statements can stand alone or be part of if/else conditionals in which case must be BOOL.
        NSString *empty =@"The line is currently empty.";
        return empty;
    }
    
    else{
        NSString *lineIs = @"The line is:"; // 'The line is' string doesn't need to be printed each time there keep it outside the loop and have it receive/add on people's names from deliLine array.
        for(NSUInteger i = 0; i < [deliLine count]; i++)// counter needed for 'for' loop to know to loop for length of array.
        {
        NSUInteger placeInLine = i + 1; // accounts for 'off by one' error of using index to obtain placement in line.
        lineIs = [lineIs stringByAppendingFormat:@"\n%lu. %@", placeInLine, deliLine[i]];//tacking on to 'lineIs' string, doesn't need to be redefined but is getting interpolated with placement and customer name.
        }
        return lineIs;
    }
}

-(void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine
{ [ deliLine addObject:name];
}

-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine
{
    NSString *nextCustomer = [deliLine firstObject];// to locate first person(who is next)in line
    
    [deliLine removeObjectAtIndex:0];//remove first person from line, deliLine is a mutable array so will retain change but there's no return to capture.
   
    return nextCustomer; //to call first person in line
}

@end
