//
//  QCViewController.h
//  Password062413
//
//  Created by Frank Rivera on 6/24/13.
//  Copyright (c) 2013 Frank Rivera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QCViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *accountTitle;
@property (strong, nonatomic) IBOutlet UITextField *userName;
@property (strong, nonatomic) IBOutlet UITextField *password;
@property (strong, nonatomic) IBOutlet UITextField *url;
@property (strong, nonatomic) IBOutlet UIButton *generatePassword;

- (IBAction)generatePasswordButtonPressed:(id)sender;
- (NSString *)randomString:(NSInteger)length;


@end
