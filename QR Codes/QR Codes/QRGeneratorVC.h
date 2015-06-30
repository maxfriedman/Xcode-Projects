//
//  QRGeneratorVC.h
//  QR Codes
//
//  Created by Max on 1/27/15.
//  Copyright (c) 2015 Happening. All rights reserved.
//

#import "ViewController.h"

@interface QRGeneratorVC : ViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UIButton *generateButton;
@property (strong, nonatomic) IBOutlet UITextField *textField;

@end
