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
@property (strong, nonatomic) UILabel *spaceUserLbl;
@property (strong, nonatomic) UITextField *passwordTxt;
@property (strong, nonatomic) UILabel *spaceLbl;
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
    
    UIColor *littleBoyBlue = [UIColor colorWithRed: 0.50 green: 0.64 blue: 0.93 alpha: 1.00];
    UIColor *turquoiseGreen = [UIColor colorWithRed: 0.57 green: 0.78 blue: 0.69 alpha: 1.00];
    UIColor *blackCoral = [UIColor colorWithRed: 0.30 green: 0.36 blue: 0.41 alpha: 1.00];
    UIColor *venetianRed = [UIColor colorWithRed: 0.76 green: 0.00 blue: 0.08 alpha: 1.00];
    
    // init logo lbl
    self.logoLbl = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
    self.logoLbl.text = @"RSSchool";
    [self.logoLbl setFont:[UIFont boldSystemFontOfSize:36]];
    self.logoLbl.textColor = [UIColor blackColor];
    self.logoLbl.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.logoLbl];
    
    // init username text field
    self.usernameTxt = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
    self.usernameTxt.layer.cornerRadius = 5;
    self.usernameTxt.layer.borderWidth = 2;
    self.usernameTxt.layer.borderColor = blackCoral.CGColor;
    self.usernameTxt.placeholder = @"login";
    
    self.spaceUserLbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    self.spaceUserLbl.backgroundColor = [UIColor clearColor];

    self.usernameTxt.leftView = self.spaceUserLbl;
    self.usernameTxt.leftViewMode = UITextFieldViewModeAlways;
    self.usernameTxt.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    
    [self.view addSubview:self.usernameTxt];
    
    // init password text field
    self.passwordTxt = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
    self.passwordTxt.layer.cornerRadius = 5;
    self.passwordTxt.layer.borderWidth = 2;
    self.passwordTxt.layer.borderColor = blackCoral.CGColor;
    self.passwordTxt.placeholder = @"password";
    self.passwordTxt.secureTextEntry = YES;
    
    self.spaceLbl = [[UILabel alloc] initWithFrame:CGRectMake(10,0,7,26)];
    self.spaceLbl.backgroundColor = [UIColor clearColor];

    self.passwordTxt.leftView = self.spaceLbl;
    self.passwordTxt.leftViewMode = UITextFieldViewModeAlways;
    self.passwordTxt.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    
    [self.view addSubview:self.passwordTxt];
    
    // init authorize button
    self.authorizeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.authorizeBtn setTitle:@"Authorize" forState:UIControlStateNormal];
    [self.authorizeBtn setTitleColor:littleBoyBlue forState:UIControlStateNormal];
    [self.authorizeBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:20]];
    self.authorizeBtn.layer.cornerRadius = 5;
    self.authorizeBtn.layer.borderColor = littleBoyBlue.CGColor;
    self.authorizeBtn.layer.borderWidth = 2;
    [self.view addSubview:self.authorizeBtn];
    
    // init secure view
    self.secureView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
    self.secureView.layer.cornerRadius = 10;
    self.secureView.layer.borderColor = UIColor.purpleColor.CGColor;
    self.secureView.layer.borderWidth = 2;
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
    [self.secureOneBtn setTitleColor:littleBoyBlue forState:UIControlStateNormal];
    [self.secureOneBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:20]];
    self.secureOneBtn.layer.cornerRadius = 25;
    self.secureOneBtn.layer.borderColor = littleBoyBlue.CGColor;
    self.secureOneBtn.layer.borderWidth = 1.5;
    [self.secureView addSubview:self.secureOneBtn];
    
    // init secure two button
    self.secureTwoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.secureTwoBtn setTitle:@"2" forState:UIControlStateNormal];
    [self.secureTwoBtn setTitleColor:littleBoyBlue forState:UIControlStateNormal];
    [self.secureTwoBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:20]];
    self.secureTwoBtn.layer.cornerRadius = 25;
    self.secureTwoBtn.layer.borderColor = littleBoyBlue.CGColor;
    self.secureTwoBtn.layer.borderWidth = 1.5;
    [self.secureView addSubview:self.secureTwoBtn];
    
    // init secure three button
    self.secureThreeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.secureThreeBtn setTitle:@"3" forState:UIControlStateNormal];
    [self.secureThreeBtn setTitleColor:littleBoyBlue forState:UIControlStateNormal];
    [self.secureThreeBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:20]];
    self.secureThreeBtn.layer.cornerRadius = 25;
    self.secureThreeBtn.layer.borderColor = littleBoyBlue.CGColor;
    self.secureThreeBtn.layer.borderWidth = 1.5;
    [self.secureView addSubview:self.secureThreeBtn];
    
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.logoLbl.translatesAutoresizingMaskIntoConstraints = NO;
    self.usernameTxt.translatesAutoresizingMaskIntoConstraints = NO;
    self.spaceUserLbl.translatesAutoresizingMaskIntoConstraints = NO;
    self.passwordTxt.translatesAutoresizingMaskIntoConstraints = NO;
    self.spaceLbl.translatesAutoresizingMaskIntoConstraints = NO;
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
    [self.logoLbl.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:80].active = YES;
    
    [self.usernameTxt.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.usernameTxt.topAnchor constraintEqualToAnchor:self.logoLbl.bottomAnchor constant:80].active = YES;
    [self.usernameTxt.heightAnchor constraintEqualToConstant:36].active = YES;
    [self.usernameTxt.widthAnchor constraintEqualToConstant:self.view.bounds.size.width - 72].active = YES;
    
    [self.spaceUserLbl.widthAnchor constraintEqualToConstant:10].active = YES;
    
    [self.passwordTxt.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.passwordTxt.topAnchor constraintEqualToAnchor:self.usernameTxt.bottomAnchor constant:30].active = YES;
    [self.passwordTxt.heightAnchor constraintEqualToConstant:36].active = YES;
    [self.passwordTxt.widthAnchor constraintEqualToConstant:self.view.bounds.size.width - 72].active = YES;
    
    [self.spaceLbl.widthAnchor constraintEqualToConstant:10].active = YES;
    
    [self.authorizeBtn.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.authorizeBtn.topAnchor constraintEqualToAnchor:self.passwordTxt.bottomAnchor constant:60].active = YES;
    [self.authorizeBtn.heightAnchor constraintEqualToConstant:42].active = YES;
    [self.authorizeBtn.widthAnchor constraintEqualToConstant:156].active = YES;
    
    [self.secureView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.secureView.heightAnchor constraintEqualToConstant:120].active = YES;
    [self.secureView.widthAnchor constraintEqualToConstant:246].active = YES;
    [self.secureView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant: -50].active = YES;
    
    [self.secureLbl.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.secureLbl.topAnchor constraintEqualToAnchor:self.secureView.topAnchor constant:15].active = YES;
    
    [self.secureTwoBtn.topAnchor constraintEqualToAnchor:self.secureLbl.bottomAnchor constant:15].active = YES;
    [self.secureTwoBtn.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.secureTwoBtn.heightAnchor constraintEqualToConstant:50].active = YES;
    [self.secureTwoBtn.widthAnchor constraintEqualToConstant:50].active = YES;
    
    [self.secureThreeBtn.leadingAnchor constraintEqualToAnchor:self.secureTwoBtn.trailingAnchor constant:23].active = YES;
    [self.secureThreeBtn.topAnchor constraintEqualToAnchor:self.secureTwoBtn.topAnchor].active = YES;
    [self.secureThreeBtn.heightAnchor constraintEqualToConstant:50].active = YES;
    [self.secureThreeBtn.widthAnchor constraintEqualToConstant:50].active = YES;
    
    [self.secureOneBtn.trailingAnchor constraintEqualToAnchor:self.secureTwoBtn.leadingAnchor constant:-23].active = YES;
    [self.secureOneBtn.topAnchor constraintEqualToAnchor:self.secureTwoBtn.topAnchor].active = YES;
    [self.secureOneBtn.heightAnchor constraintEqualToConstant:50].active = YES;
    [self.secureOneBtn.widthAnchor constraintEqualToConstant:50].active = YES;
}


@end
