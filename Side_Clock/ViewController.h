//
//  ViewController.h
//  Side_Clock
//
//  Created by Macgill Davis on 2/1/15.
//  Copyright (c) 2015 Macgill Davis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *clockLabel;

-(void) updateClockLabel;

@end

