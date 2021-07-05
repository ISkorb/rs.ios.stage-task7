//
//  ViewController.m
//  AuthSimple
//
//  Created by Ina on 5.07.21.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UILabel *logoLbl;
@property (strong, nonatomic) UITextField *usernameTxt;
@property (strong, nonatomic) UITextField *passwordTxt;
@property (strong, nonatomic) UIButton *authorizeBtn;
@property (strong, nonatomic) UIView *secureView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    // init logo lbl
    self.logoLbl = [[UILabel alloc]initWithFrame:CGRectMake(0, 20, self.view.frame.size.width - 40, 40)];
    self.logoLbl.text = @"RSSchool";
    self.logoLbl.textColor = [UIColor blackColor];
    self.logoLbl.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:self.logoLbl];
    
    // init username text field
    self.usernameTxt = [[UITextField alloc]initWithFrame:CGRectMake(0, 70, self.view.frame.size.width - 40, 40)];
    self.usernameTxt.borderStyle = UITextBorderStyleRoundedRect;
    self.usernameTxt.placeholder = @"login";
    [self.view addSubview:self.usernameTxt];
    
    // init password text field
    self.passwordTxt = [[UITextField alloc]initWithFrame:CGRectMake(0, 120, self.view.frame.size.width - 40, 40)];
    self.passwordTxt.borderStyle = UITextBorderStyleRoundedRect;
    self.passwordTxt.placeholder = @"password";
    self.passwordTxt.secureTextEntry = YES;
    [self.view addSubview:self.passwordTxt];
    
    // init authorize button
    self.authorizeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.authorizeBtn setTitle:@"Authorize" forState:UIControlStateNormal];
    self.authorizeBtn.frame = CGRectMake(0, 170, 160.0, 40.0);
    self.authorizeBtn.backgroundColor = [UIColor systemPinkColor];
    self.authorizeBtn.layer.cornerRadius = 5;
    self.authorizeBtn.layer.borderColor = UIColor.purpleColor.CGColor;
    self.authorizeBtn.layer.borderWidth = 1;
    [self.view addSubview:self.authorizeBtn];
    
    // init secure view
    self.secureView = [[UIView alloc]initWithFrame:CGRectMake(0, 220, self.view.frame.size.width - 80, 80)];
    self.secureView.layer.cornerRadius = 5;
    self.secureView.layer.borderColor = UIColor.purpleColor.CGColor;
    self.secureView.layer.borderWidth = 1;
    [self.view addSubview:self.secureView];
}


@end
