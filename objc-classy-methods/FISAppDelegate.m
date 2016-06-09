//  FISAppDelegate.m

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSString *katherine = @"Katherine";
    NSString *katherineHepburn = [katherine stringByAppendingString:@" Hepburn"];
    NSLog(@"%@", katherineHepburn);
    
    NSString *james = @"James";
    NSString *jamesStewart = [[NSString alloc] initWithFormat:@"%@ %@", james, @"Stewart"];
    NSLog(@"%@", jamesStewart);
    
    NSString *queen = @"Queen";
    NSString *queenElizabethII = [NSString stringWithFormat:@"%@ %@ %@", queen, @"Elizabeth", @"II"];
    NSLog(@"%@", queenElizabethII);
    
    NSArray *classyThings = @[ @"monocle", @"top hat", @"martini glass" ];
    NSLog(@"Classy things: %@", classyThings);
    
    NSArray *classyPeople = [[NSArray alloc] initWithObjects:@"Katherine Hepburn", @"James Stewart", @"Queen Elizabeth II", nil];
    NSLog(@"Classy people: %@", classyPeople);
    
    NSArray *classyDrinks = [NSArray arrayWithObjects:@"Old Fashioned", @"Churchill Martini", @"Prosecco", nil];
    NSLog(@"Classy drinks: %@", classyDrinks);
    
    NSDictionary *classyByLiteral = @{
                                      @"classy things" : @[ @"monocle", @"top hat", @"martini glass" ],
                                      @"classy people" : @[ @"Katherine Hepburn", @"James Stewart", @"Queen Elizabeth II" ],
                                      @"classy drinks" : @[ @"Old Fashioned", @"Churchill Martini", @"Prosecco" ]
                                     };
    
    NSLog(@"Classy by literal: %@", classyByLiteral);
    
    NSDictionary *classyByInit = [[NSDictionary alloc] initWithObjectsAndKeys:classyThings, @"classy things",
                                                                              classyPeople, @"classy people",
                                                                              classyDrinks, @"classy drinks", nil];
    NSLog(@"Classy by init: %@", classyByInit);
    
    NSDictionary *classyByClass = [NSDictionary dictionaryWithObjects:@[ classyThings, classyPeople, classyDrinks ]
                                                              forKeys:@[ @"classy things", @"classy people", @"classy drinks" ]];
    NSLog(@"Classy by class: %@", classyByClass);
    
    return YES;
}

@end
