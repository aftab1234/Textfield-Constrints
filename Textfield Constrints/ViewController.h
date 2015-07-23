//
//  ViewController.h
//  Textfield Constrints
//
//  Created by Sam on 15/04/15.
//  Copyright (c) 2015 Bets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField  *field1;
@property (weak, nonatomic) IBOutlet UITextField  *field2;

-(IBAction) editingChanged:(UITextField*)sender;

@end

