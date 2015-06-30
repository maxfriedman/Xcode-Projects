//
//  QRGeneratorVC.m
//  QR Codes
//
//  Created by Max on 1/27/15.
//  Copyright (c) 2015 Happening. All rights reserved.
//

#import "QRGeneratorVC.h"

@interface QRGeneratorVC ()

@end

@implementation QRGeneratorVC {
    
    NSString *enteredText;
}

@synthesize imageView, generateButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    enteredText = @"test";
    
    CIImage *QRImage = [self createQRForString:@"TESTING"];
    UIImage *image = [[UIImage alloc] initWithCIImage:QRImage];
    
    UIImageView *testImageView = [[UIImageView alloc] initWithImage:image];
    [self.view addSubview:testImageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CIImage *)createQRForString:(NSString *)qrString
{
    // Need to convert the string to a UTF-8 encoded NSData object
    NSData *stringData = [qrString dataUsingEncoding:NSUTF8StringEncoding];

    // Create the filter
    CIFilter *qrFilter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    // Set the message content and error-correction level
    [qrFilter setValue:stringData forKey:@"inputMessage"];
    [qrFilter setValue:@"H" forKey:@"inputCorrectionLevel"];
    
    // Send the image back
    return qrFilter.outputImage;
}

- (UIImage *)createNonInterpolatedUIImageFromCIImage:(CIImage *)image withScale:(CGFloat)scale
{
    // Render the CIImage into a CGImage
    CGImageRef cgImage = [[CIContext contextWithOptions:nil] createCGImage:image fromRect:image.extent];
    
    // Now we'll rescale using CoreGraphics
    UIGraphicsBeginImageContext(CGSizeMake(image.extent.size.width * scale, image.extent.size.width * scale));
    CGContextRef context = UIGraphicsGetCurrentContext();
    // We don't want to interpolate (since we've got a pixel-correct image)
    CGContextSetInterpolationQuality(context, kCGInterpolationNone);
    CGContextDrawImage(context, CGContextGetClipBoundingBox(context), cgImage);
    // Get the image out
    UIImage *scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    // Tidy up
    UIGraphicsEndImageContext();
    CGImageRelease(cgImage);
    return scaledImage;
}
- (IBAction)textEntered:(UITextField *)sender {

    enteredText = self.textField.text;
    
}

- (IBAction)handleGenerateButtonPressed:(id)sender {
    // Disable the UI
    [self setUIElementsAsEnabled:NO];
    //[self.stringTextField resignFirstResponder];
    
    // Get the string
    NSString *stringToEncode = enteredText;
    
    // Generate the image
    CIImage *qrCode = [self createQRForString:stringToEncode];
    
    // Convert to an UIImage
    UIImage *qrCodeImg = [self createNonInterpolatedUIImageFromCIImage:qrCode withScale:2*[[UIScreen mainScreen] scale]];
    
    // And push the image on to the screen
    imageView.image = qrCodeImg;
    
    // Re-enable the UI
    [self setUIElementsAsEnabled:YES];
}

- (void)setUIElementsAsEnabled:(BOOL)enabled
{
    self.generateButton.enabled = enabled;
    //self.stringTextField.enabled = enabled;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
