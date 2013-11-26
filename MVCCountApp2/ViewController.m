//
//  ViewController.m
//  MVCCountApp2
//
//  Created by 岩崎 広平 on 2013/11/26.
//  Copyright (c) 2013年 howcollect. All rights reserved.
//

#import "ViewController.h"
#import "Model.h"

@interface ViewController ()
{
    IBOutlet UILabel *label;
    Model *model;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    model = [[Model alloc] init];
    
    [model addObserver:self forKeyPath:@"counter" options:NSKeyValueObservingOptionNew context:nil];
    
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    label.text = [NSString stringWithFormat:@"%d",model.counter];
}

- (IBAction)plus:(id)sender
{
    [model countUp];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [model removeObserver:self forKeyPath:@"counter"];
}

@end
