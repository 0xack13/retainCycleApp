//
//  ViewController.m
//  retainCycleApp
//
//  Created by 0xack13 on 12/19/14.
//  Copyright (c) 2014 0xack13. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    @autoreleasepool {
        NSMutableString* s1  = [[NSMutableString alloc] init];
        NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)s1));

        
    }
}

-(void) dealloc
{
    NSLog(@"Dealloc Called!");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
