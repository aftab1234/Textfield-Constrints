//
//  ViewController.m
//  Textfield Constrints
//
//  Created by Sam on 15/04/15.
//  Copyright (c) 2015 Bets. All rights reserved.
//

#import "ViewController.h"
#define ACCEPTABLE_CHARACTERS @" ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz "
#define ACCEPTABLE_CHARACTERS1 @"0123456789+"

@interface ViewController ()

@end

@implementation ViewController
@synthesize field1;
@synthesize field2;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(IBAction) editingChanged:(UITextField*)sender
//{
//    if (sender == field1)
//    {
//        // allow only chars and whitespace
//        
//         NSString* newStr = [sender.text stringByTrimmingCharactersInSet:[[NSCharacterSet characterSetWithCharactersInString:ACCEPTABLE_CHARACTERS] invertedSet]];
//        
//        
//         if ([newStr length] < [sender.text length])
//        {
//            sender.text = newStr;
//        }
//    }
//    if (sender == field2)
//    {
//        // allow only numeric chars and plus
//    
//         NSString* newStr = [sender.text stringByTrimmingCharactersInSet:[[NSCharacterSet characterSetWithCharactersInString:ACCEPTABLE_CHARACTERS1] invertedSet]];
//        
//        if ([newStr length] < [sender.text length])
//        {
//            sender.text = newStr;
//        }
//    }
//}

-(void)textFieldDidBeginEditing:(UITextField *)textField{
    NSLog(@"Text field begin editing");
    
    
}

// This method is called once we complete editing
-(void)textFieldDidEndEditing:(UITextField *)textField{
    NSLog(@"Text field ended editing");
    
    
    
}

// This method enables or disables the processing of return key
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    NSLog(@"textFieldShouldReturn:");
    

    
    [textField resignFirstResponder];
    
    return YES;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if(textField==field1)
    {
    NSCharacterSet *cs = [[NSCharacterSet characterSetWithCharactersInString:ACCEPTABLE_CHARACTERS] invertedSet];
    
    NSString *filtered = [[string componentsSeparatedByCharactersInSet:cs] componentsJoinedByString:@""];
        int limit = 20;
        NSUInteger newLength = [textField.text length] - range.length + [string length];
        //return !(newLength >limit);
        
        return ([string isEqualToString:filtered]&&!(newLength >limit));
    
    //return [string isEqualToString:filtered];
    }
    
    else if (textField==field2)
    {
        NSCharacterSet *cs = [[NSCharacterSet characterSetWithCharactersInString:ACCEPTABLE_CHARACTERS1] invertedSet];
        
        NSString *filtered = [[string componentsSeparatedByCharactersInSet:cs] componentsJoinedByString:@""];
        int limit = 15;
        NSUInteger newLength = [textField.text length] - range.length + [string length];
        //return !(newLength >limit);
        
        return ([string isEqualToString:filtered]&&!(newLength >limit));
    }
    
    else
    {
       return YES;
    }
    
 
    
}


- (BOOL)textFieldShouldClear:(UITextField *)textField{
    
    return YES;
}

@end
