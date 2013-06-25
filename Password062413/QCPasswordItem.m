//
//  QCPasswordItem.m
//  Password062413
//
//  Created by Frank Rivera on 6/24/13.
//  Copyright (c) 2013 Frank Rivera. All rights reserved.
//

#import "QCPasswordItem.h"

@interface QCPasswordItem ()

@end

@implementation QCPasswordItem

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
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStyleBordered target:self action:@selector(editBarButtonItemPressed:)];
    self.navigationItem.rightBarButtonItem = barButtonItem;
}

-(void)editBarButtonItemPressed {
    QCEditPassword *editPasswordVC = [[QCEditPassword alloc] initWithNibName:nil bundle:nil];
    [self.navigationController presentViewController:editPasswordVC animated:YES completion:NULL];
//    UINavigationController *editView =[[UINavigationController alloc]init][
//        self.navigationController pushViewController];editView animated:YES];
//    [editView release]
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
