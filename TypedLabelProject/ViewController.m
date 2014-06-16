//
//  ViewController.m
//  TypedLabelProject
//
//  Created by Alexander Popov on 6/16/14.
//  Copyright (c) 2014 Imperia Online LTD. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
    [_typedLabel setText:@""];
    [_typedLabel setTypedText:@"Demo text here."];
    [_typedLabel setTypingSpeed:0.25f];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didPressStartTypingButton
{
    
    [_typedLabel startTyping];
    
}

@end
