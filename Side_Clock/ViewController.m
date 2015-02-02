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

int clickCounter = 0;

- (void)viewDidLoad {
    //change background to black
    [[self view] setBackgroundColor:[UIColor blackColor]];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //tap recognition
    UITapGestureRecognizer *singleTapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTapGesture:)];
    [self.view addGestureRecognizer:singleTapGestureRecognizer];

    
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


-(void)handleSingleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer{
    
    clickCounter++;
    switch (clickCounter % 12) {
        case 1:
            [[self view] setBackgroundColor:[UIColor darkGrayColor]];
            [self.clockLabel setTextColor:[UIColor lightGrayColor]];
            break;
        case 2:
            [[self view] setBackgroundColor:[UIColor grayColor]];
            [self.clockLabel setTextColor:[UIColor whiteColor]];
            break;
        case 3:
            [[self view] setBackgroundColor:[UIColor lightGrayColor]];
            [self.clockLabel setTextColor:[UIColor blackColor]];
            break;
        case 4:
            [[self view] setBackgroundColor:[UIColor redColor]];
            [self.clockLabel setTextColor:[UIColor whiteColor]];
            break;
        case 5:
            [[self view] setBackgroundColor:[UIColor greenColor]];
            [self.clockLabel setTextColor:[UIColor whiteColor]];
            break;
        case 6:
            [[self view] setBackgroundColor:[UIColor blueColor]];
            [self.clockLabel setTextColor:[UIColor whiteColor]];
            break;
        case 7:
            [[self view] setBackgroundColor:[UIColor cyanColor]];
            [self.clockLabel setTextColor:[UIColor blackColor]];
            break;
        case 8:
            [[self view] setBackgroundColor:[UIColor yellowColor]];
            [self.clockLabel setTextColor:[UIColor blackColor]];
            break;
        case 9:
            [[self view] setBackgroundColor:[UIColor magentaColor]];
            [self.clockLabel setTextColor:[UIColor whiteColor]];
            break;
        case 10:
            [[self view] setBackgroundColor:[UIColor orangeColor]];
            [self.clockLabel setTextColor:[UIColor whiteColor]];
            break;
        case 11:
            [[self view] setBackgroundColor:[UIColor purpleColor]];
            [self.clockLabel setTextColor:[UIColor whiteColor]];
            break;
            
        default:
            [[self view] setBackgroundColor:[UIColor blackColor]];
            [self.clockLabel setTextColor:[UIColor lightGrayColor]];
            break;
    }
}

@end
