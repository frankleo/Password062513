//
//  QCViewController.m
//  Password062413
//
//  Created by Frank Rivera on 6/24/13.
//  Copyright (c) 2013 Frank Rivera. All rights reserved.
//

#import "QCViewController.h"

@interface QCViewController ()

@end

@implementation QCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.accountTitle.delegate = self;
    self.userName.delegate = self;
    self.password.delegate = self;
    self.url.delegate = self;
    
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Save" style:UIBarButtonItemStyleBordered target:self action:@selector(saveBarButtonItemPressed:)];
    self.navigationItem.rightBarButtonItem = barButtonItem;
    [self.generatePassword setTitle:@"Generate Random Password" forState:UIControlStateNormal];
}
-(NSString *)randomString:(NSInteger)length

{
    
    NSString *letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    
    NSMutableString *randomString = [NSMutableString stringWithCapacity:length];
    
    for (int i = 0; i < length; i++) {
        
        [randomString appendFormat:@"%C", [letters characterAtIndex:arc4random() % [letters length]]];
        
    }
    
    return randomString;
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.accountTitle resignFirstResponder];
    [self.userName resignFirstResponder];
    [self.password resignFirstResponder];
    [self.url resignFirstResponder];
    return YES;
}
//
//-(void)addBarButtonItem
//{
//    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Save" style:UIBarButtonItemStyleBordered target:self action:@selector(saveBarButtonItemPressed:)];
//    self.navigationItem.rightBarButtonItem = barButtonItem;
//}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)generatePasswordButtonPressed:(id)sender {
    self.password.text = [self randomString:8];
}
@end
