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
    
    Calculator *calc = [[Calculator alloc] init];
    
    NSString *firstValue = self.firstNumber.text;
    NSString *secondValue = self.secondNumber.text;
    NSString *operation =  sender.titleLabel.text;
    
    if ([operation isEqualToString:@"Add"]){
        double add_answer = [calc add: firstValue second: secondValue];
        self.result.text = [NSString stringWithFormat:@"%.02f",add_answer];
    }
    else if ([operation isEqualToString:@"Subtract"]){
        double subtract_answer = [calc subtract: firstValue second: secondValue];
        self.result.text = [NSString stringWithFormat:@"%.02f",subtract_answer];
    }
    else if ([operation isEqualToString:@"Multiply"]){
        double multiply_answer = [calc multiply: firstValue second: secondValue];
        self.result.text = [NSString stringWithFormat:@"%.02f",multiply_answer];
    }
    else{
        double divide_answer = [calc divide: firstValue second: secondValue];
        self.result.text = [NSString stringWithFormat:@"%.02f",divide_answer];
    }
    [_secondNumber resignFirstResponder];
    [_firstNumber resignFirstResponder];
}





@end
