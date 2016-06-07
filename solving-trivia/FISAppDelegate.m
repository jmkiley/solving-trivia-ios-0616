//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    [self solveTrivia];
    return YES;
}

- (NSString *)solveTrivia {
    NSDictionary *statesAndCapitals = @{
                                        
                                        @"Montgomery"       :@"Alabama        ",
                                        @"Juneau"           :@"Alaska         ",
                                        @"Phoenix"          :@"Arizona        ",
                                        @"Little Rock"      :@"Arkansas       ",
                                        @"Sacramento"       :@"California     ",
                                        @"Denver"           :@"Colorado       ",
                                        @"Hartford"         :@"Connecticut    ",
                                        @"Dover"            :@"Delaware       ",
                                        @"Tallahassee"      :@"Florida        ",
                                        @"Atlanta"          :@"Georgia        ",
                                        @"Honolulu"         :@"Hawaii         ",
                                        @"Boise"            :@"Idaho          ",
                                        @"Springfield"      :@"Illinois       ",
                                        @"Indianapolis"     :@"Indiana        ",
                                        @"Des Moines"       :@"Iowa           ",
                                        @"Topeka"           :@"Kansas         ",
                                        @"Frankfort"        :@"Kentucky       ",
                                        @"Baton Rouge"      :@"Louisiana      ",
                                        @"Augusta"          :@"Maine          ",
                                        @"Annapolis"        :@"Maryland       ",
                                        @"Boston"           :@"Massachusetts  ",
                                        @"Lansing"          :@"Michigan       ",
                                        @"Saint Paul"       :@"Minnesota      ",
                                        @"Jackson"          :@"Mississippi    ",
                                        @"Jefferson City"   :@"Missouri       ",
                                        @"Helena"           :@"Montana        ",
                                        @"Lincoln"          :@"Nebraska       ",
                                        @"Carson City"      :@"Nevada         ",
                                        @"Concord New"      :@"Hampshire      ",
                                        @"Trenton New"      :@"Jersey         ",
                                        @"Santa Fe"         :@"New Mexico     ",
                                        @"Albany"           :@"New York       ",
                                        @"Raleigh"          :@"North Carolina ",
                                        @"Bismarck"         :@"North Dakota   ",
                                        @"Columbus"         :@"Ohio           ",
                                        @"Oklahoma City"    :@"Oklahoma       ",
                                        @"Salem"            :@"Oregon         ",
                                        @"Harrisburg"       :@"Pennsylvania   ",
                                        @"Providence"       :@"Rhode Island   ",
                                        @"Columbia"         :@"South Carolina ",
                                        @"Pierre"           :@"South Dakota",
                                        @"Nashville"        :@"Tennessee      ",
                                        @"Austin"           :@"Texas          ",
                                        @"Salt Lake City"   :@"Utah           ",
                                        @"Montpelier"       :@"Vermont        ",
                                        @"Richmond"         :@"Virginia       ",
                                        @"Olympia"          :@"Washington     ",
                                        @"Charleston"       :@"West Virginia  ",
                                        @"Madison"          :@"Wisconsin      ",
                                        @"Cheyenne"         :@"Wyoming        "
                                        };
    NSArray *capitals = [ statesAndCapitals allKeys ];
    NSMutableDictionary *statesAndCapitalsCopy = [statesAndCapitals mutableCopy];
    NSMutableArray *toRemove = [ NSMutableArray new ];
    for (NSMutableString *capital in capitals) {
        for ( NSUInteger i = 0 ; i < [capital length ] ; i++) {
            unichar ch = [capital characterAtIndex:i] ;
            NSString *letter = [NSString stringWithFormat:@"%c", ch] ;
            if ([ statesAndCapitals[capital] localizedCaseInsensitiveContainsString:letter]) {
                if (![ toRemove containsObject:capital] ) {
                    [ toRemove addObject:capital];
                }
            }
        }
    }
    NSArray *toRemoveArray = toRemove ;
    [statesAndCapitalsCopy removeObjectsForKeys:toRemoveArray];
    NSArray *capitalsWithoutSameLettersAsState = [ statesAndCapitalsCopy allValues ] ;
    NSString *answer = capitalsWithoutSameLettersAsState[0];
    NSLog(@"answer: *%@*", answer);
    return answer;
}

@end
