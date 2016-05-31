//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSUInteger start = 1;
    NSUInteger limit = 100;
    
    for(NSUInteger i = start; i <= limit; i++){
        NSString *result = @"";
        
        if(i % 3 == 0 && i % 5 == 0){
            result = @"FizzBuzz";
        }
        else if (i % 3 == 0){
            result = @"Fizz";
        }
        else if (i % 5 == 0){
            result = @"Buzz";
        }
        else {
            result = [NSString stringWithFormat:@"%lu", i];
        }
        NSLog(@"%@", result);
    }
    
    // ADVANCED
        // METHOD 1
    for(NSUInteger i = start; i < limit; i++){
        NSString *result = @"";
        if(i % 3 == 0){
            result = @"Fizz";
            if(i % 5 == 0){ //once it satisfies that condition that it is divisible by 3, we check if this number is also divisible by 5 by nesting this if statement here
                result = @"FizzBuzz";
            }
        }
        else if(i % 5 == 0){
            result = @"Buzz";
        }
        else {
            result = [NSString stringWithFormat:@"%lu", i];
        }
        NSLog(@"%@", result);
    }
    
        // METHOD 2
    for(NSUInteger i = start; i < limit; i++){
        NSUInteger score = 0;
        NSString *result = @"";
        
        if(i%3 == 0){
            score++;
            result = @"Fizz";
            
            if(i%5 == 0){
                score++;
                result = @"Buzz";
            }
        }
        else {
            result = [NSString stringWithFormat:@"%lu", i];
        }
        
        if(score == 2){
            result = @"FizzBuzz";
        }
        
        NSLog(@"%@", result);
    }
    
    // do not alter
    return YES;  //
    ///////////////
}

@end
