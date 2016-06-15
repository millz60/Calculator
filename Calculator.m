//
//  Calculator.m
//  Calculator
//
//  Created by Matt Milner on 6/15/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
{
    
}

-(double) add:(NSString *) first second:(NSString *) second{
    return first.doubleValue + second.doubleValue;
}

-(double) subtract:(NSString *) first second:(NSString *) second{
    return first.doubleValue - second.doubleValue;
}

-(double) multiply:(NSString *) first second:(NSString *) second{
    return first.doubleValue * second.doubleValue;
}

-(double) divide:(NSString *) first second:(NSString *) second{
    return first.doubleValue / second.doubleValue;
}
@end
