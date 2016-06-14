//
//  ViewController.m
//  Calculator
//
//  Created by Matt Milner on 6/14/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction) buttonPressed:(UIButton *) sender{
    
    NSString *firstValue = self.firstNumber.text;
    NSString *secondValue = self.secondNumber.text;
    NSString *operation =  sender.titleLabel.text;
    
    if ([operation isEqualToString:@"Add"]){
        self.result.text = [NSString stringWithFormat:@"%.03f",[self add: firstValue second: secondValue]];
    }
    else if ([operation isEqualToString:@"Subtract"]){
        self.result.text = [NSString stringWithFormat:@"%.03f",[self subtract: firstValue second: secondValue]];
    }
    else if ([operation isEqualToString:@"Multiply"]){
        self.result.text = [NSString stringWithFormat:@"%.03f",[self multiply: firstValue second: secondValue]];
    }
    else{
        self.result.text = [NSString stringWithFormat:@"%.03f",[self divide: firstValue second: secondValue]];
    }
    [_secondNumber resignFirstResponder];
    [_firstNumber resignFirstResponder];
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
