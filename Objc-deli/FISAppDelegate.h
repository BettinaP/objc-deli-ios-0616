//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/*
 
 *  Declare your methods here!
 
 */


-(NSString *) stringWithDeliLine:(NSArray *)deliLine;

-(void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine;

-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine;


@end
