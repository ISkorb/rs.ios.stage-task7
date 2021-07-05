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
@property (strong, nonatomic) UILabel *secureLbl;
@property (strong, nonatomic) UIButton *secureOneBtn;
@property (strong, nonatomic) UIButton *secureTwoBtn;
@property (strong, nonatomic) UIButton *secureThreeBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    // init logo lbl
    self.logoLbl = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
    self.logoLbl.text = @"RSSchool";
    self.logoLbl.textColor = [UIColor blackColor];
    self.logoLbl.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.logoLbl];
    
    // init username text field
    self.usernameTxt = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
    self.usernameTxt.borderStyle = UITextBorderStyleRoundedRect;
    self.usernameTxt.placeholder = @"login";
    [self.view addSubview:self.usernameTxt];
    
    // init password text field
    self.passwordTxt = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
    self.passwordTxt.borderStyle = UITextBorderStyleRoundedRect;
    self.passwordTxt.placeholder = @"password";
    self.passwordTxt.secureTextEntry = YES;
    [self.view addSubview:self.passwordTxt];
    
    // init authorize button
    self.authorizeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.authorizeBtn setTitle:@"Authorize" forState:UIControlStateNormal];
    self.authorizeBtn.backgroundColor = [UIColor systemPinkColor];
    self.authorizeBtn.layer.cornerRadius = 5;
    self.authorizeBtn.layer.borderColor = UIColor.purpleColor.CGColor;
    self.authorizeBtn.layer.borderWidth = 1;
    [self.view addSubview:self.authorizeBtn];
    
    // init secure view
    self.secureView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
    self.secureView.layer.cornerRadius = 5;
    self.secureView.layer.borderColor = UIColor.purpleColor.CGColor;
    self.secureView.layer.borderWidth = 1;
    [self.view addSubview:self.secureView];
    
    // init secure lbl
    self.secureLbl = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
    self.secureLbl.text = @"1 2 3";
    self.secureLbl.textColor = [UIColor blackColor];
    self.secureLbl.textAlignment = NSTextAlignmentCenter;
    [self.secureView addSubview:self.secureLbl];
    
    // init secure one button
    self.secureOneBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.secureOneBtn setTitle:@"1" forState:UIControlStateNormal];
    self.secureOneBtn.backgroundColor = [UIColor systemPinkColor];
    self.secureOneBtn.layer.cornerRadius = 5;
    self.secureOneBtn.layer.borderColor = UIColor.purpleColor.CGColor;
    self.secureOneBtn.layer.borderWidth = 1;
    [self.secureView addSubview:self.secureOneBtn];
    
    // init secure two button
    self.secureTwoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.secureTwoBtn setTitle:@"2" forState:UIControlStateNormal];
    self.secureTwoBtn.backgroundColor = [UIColor systemPinkColor];
    self.secureTwoBtn.layer.cornerRadius = 5;
    self.secureTwoBtn.layer.borderColor = UIColor.purpleColor.CGColor;
    self.secureTwoBtn.layer.borderWidth = 1;
    [self.secureView addSubview:self.secureTwoBtn];
    
    // init secure three button
    self.secureThreeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.secureThreeBtn setTitle:@"3" forState:UIControlStateNormal];
    self.secureThreeBtn.backgroundColor = [UIColor systemPinkColor];
    self.secureThreeBtn.layer.cornerRadius = 5;
    self.secureThreeBtn.layer.borderColor = UIColor.purpleColor.CGColor;
    self.secureThreeBtn.layer.borderWidth = 1;
    [self.secureView addSubview:self.secureThreeBtn];
    
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.logoLbl.translatesAutoresizingMaskIntoConstraints = NO;
    self.usernameTxt.translatesAutoresizingMaskIntoConstraints = NO;
    self.passwordTxt.translatesAutoresizingMaskIntoConstraints = NO;
    self.authorizeBtn.translatesAutoresizingMaskIntoConstraints = NO;
    self.secureView.translatesAutoresizingMaskIntoConstraints = NO;
    self.secureLbl.translatesAutoresizingMaskIntoConstraints = NO;
    self.secureOneBtn.translatesAutoresizingMaskIntoConstraints = NO;
    self.secureTwoBtn.translatesAutoresizingMaskIntoConstraints = NO;
    self.secureThreeBtn.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self createConstraints];
}

-(void) createConstraints {
    [self.logoLbl.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.logoLbl.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:100].active = YES;
    
    [self.usernameTxt.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.usernameTxt.topAnchor constraintEqualToAnchor:self.logoLbl.bottomAnchor constant:20].active = YES;
    
    [self.passwordTxt.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.passwordTxt.topAnchor constraintEqualToAnchor:self.usernameTxt.bottomAnchor constant:20].active = YES;
    
    [self.authorizeBtn.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.authorizeBtn.topAnchor constraintEqualToAnchor:self.passwordTxt.bottomAnchor constant:20].active = YES;
    
    [self.secureView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.secureView.heightAnchor constraintEqualToConstant:100].active = YES;
    [self.secureView.widthAnchor constraintEqualToConstant:self.view.bounds.size.width - 20].active = YES;
    [self.secureView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant: -50].active = YES;
    
    [self.secureLbl.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.secureLbl.topAnchor constraintEqualToAnchor:self.secureView.topAnchor constant:10].active = YES;
    
    [self.secureTwoBtn.topAnchor constraintEqualToAnchor:self.secureLbl.bottomAnchor constant:10].active = YES;
    [self.secureTwoBtn.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.secureThreeBtn.leadingAnchor constraintEqualToAnchor:self.secureTwoBtn.trailingAnchor constant:10].active = YES;
    [self.secureThreeBtn.topAnchor constraintEqualToAnchor:self.secureTwoBtn.topAnchor].active = YES;
    [self.secureOneBtn.trailingAnchor constraintEqualToAnchor:self.secureTwoBtn.leadingAnchor constant:-10].active = YES;
    [self.secureOneBtn.topAnchor constraintEqualToAnchor:self.secureTwoBtn.topAnchor].active = YES;
}


@end
