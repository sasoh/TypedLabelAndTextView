//
//  TypedLabel.h
//  TypedLabelProject
//
//  Created by Alexander Popov on 6/16/14.
//  Copyright (c) 2014 Imperia Online LTD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TypedLabel : UILabel {
    NSTimer *_typingTimer;
}

@property (nonatomic, strong) NSString *typedText;
@property (nonatomic, assign) float typingSpeed; // seconds per character

- (void)startTyping;    // start text typing
- (void)stopTyping;     // stop typing
- (void)completeText;   // immediately show text

@end
