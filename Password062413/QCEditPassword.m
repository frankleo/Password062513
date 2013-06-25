//
//  QCEditPassword.m
//  Password062413
//
//  Created by Frank Rivera on 6/24/13.
//  Copyright (c) 2013 Frank Rivera. All rights reserved.
//

#import "QCEditPassword.h"

@interface QCEditPassword ()

@end

@implementation QCEditPassword

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.editAccount.delegate = self;
    self.editUsername.delegate = self;
    self.editPassword.delegate = self;
    self.editUrl.delegate = self;
    
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Save" style:UIBarButtonItemStyleBordered target:self action:@selector(saveBarButtonItemPressed:)];
    self.navigationItem.rightBarButtonItem = barButtonItem;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.editAccount resignFirstResponder];
    [self.editUsername resignFirstResponder];
    [self.editPassword resignFirstResponder];
    [self.editUrl resignFirstResponder];
    return YES;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
