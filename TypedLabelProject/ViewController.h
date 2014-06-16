//
//  ViewController.h
//  TypedLabelProject
//
//  Created by Alexander Popov on 6/16/14.
//  Copyright (c) 2014 Imperia Online LTD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TypedLabel.h"
#import "TypedTextView.h"

@interface ViewController : UIViewController {
    IBOutlet TypedLabel *_typedLabel;
    IBOutlet TypedTextView *_typedTextView;
}

@end
