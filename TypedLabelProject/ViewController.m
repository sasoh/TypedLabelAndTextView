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
    

    [_typedTextView setText:@""];
    [_typedTextView setTypedText:@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."];
    [_typedTextView setTypingSpeed:0.1f];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didPressStartTypingButton
{
    
    [_typedLabel startTyping];
    [_typedTextView startTyping];
    
}

@end
