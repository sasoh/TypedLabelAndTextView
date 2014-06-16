//
//  TypedTextView.m
//  TypedLabelProject
//
//  Created by Alexander Popov on 6/16/14.
//  Copyright (c) 2014 Imperia Online LTD. All rights reserved.
//

#import "TypedTextView.h"

@interface TypedTextView () {
    unsigned long _currentCharacter;
}

- (void)typeNextCharacter;

@end

@implementation TypedTextView

- (void)startTyping
{
    
    if ( _typingTimer == nil ) {
        _typingTimer = [NSTimer timerWithTimeInterval:_typingSpeed target:self selector:@selector(typeNextCharacter) userInfo:nil repeats:YES];
        [[NSRunLoop currentRunLoop] addTimer:_typingTimer forMode:NSRunLoopCommonModes];
    }
    
}

- (void)typeNextCharacter
{
    
    if ( _currentCharacter < [_typedText length] - 1 ) {
        NSMutableString *mutableText = [NSMutableString stringWithString:[self text]];
        [mutableText appendFormat:@"%c", [_typedText characterAtIndex:_currentCharacter]];
        [self setText:mutableText];
        _currentCharacter++;
    } else {
        // done, unschedule timer
        [self stopTyping];
    }
    
}

- (void)stopTyping
{
    
    [_typingTimer invalidate];
    _typingTimer = nil;
    
}

- (void)completeText
{
    
    _currentCharacter = [_typedText length] - 1;
    [self setText:_typedText];
    
}

@end
