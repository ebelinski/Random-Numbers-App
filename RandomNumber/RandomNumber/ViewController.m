//
//  ViewController.m
//  RandomNumber
//
//  Created by HHWS on 27/12/14.
//  Copyright (c) 2014 Eugene Belinski. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *randomNumberLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)buttonPressed:(id)sender {
    int number = [[(UIButton *)sender currentTitle] intValue];
    
    NSLog(@"%i", number);
    
    int r = arc4random_uniform(number);
    
    self.randomNumberLabel.text = [NSString stringWithFormat: @"%i", r+1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
