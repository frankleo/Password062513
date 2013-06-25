//
//  QCEditPassword.h
//  Password062413
//
//  Created by Frank Rivera on 6/24/13.
//  Copyright (c) 2013 Frank Rivera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QCEditPassword : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *editAccount;
@property (strong, nonatomic) IBOutlet UITextField *editUsername;
@property (strong, nonatomic) IBOutlet UITextField *editPassword;
@property (strong, nonatomic) IBOutlet UITextField *editUrl;

@end
