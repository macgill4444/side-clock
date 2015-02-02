//
//  ViewController.m
//  Side_Clock
//
//  Created by Macgill Davis on 2/1/15.
//  Copyright (c) 2015 Macgill Davis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self updateClockLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) updateClockLabel {
    NSDateFormatter *clockFormat = [[NSDateFormatter alloc] init];
    [clockFormat setDateFormat:@"hh:mm:ss a"];
    
    self.clockLabel.text = [clockFormat stringFromDate:[NSDate date]];
    
    [self performSelector:@selector(updateClockLabel) withObject:self afterDelay:1.0];
}

@end
