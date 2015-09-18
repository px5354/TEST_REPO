//
//  ViewController.m
//  ExempleUI
//
//  Created by Philippe Le on 2015-09-13.
//  Copyright (c) 2015 Philippe Le. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)AlloButton:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *nomAChanger;

@property (weak, nonatomic) IBOutlet UITextField *champsPrenom;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)AlloButton:(UIButton *)sender {
    
    _nomAChanger.text = self.champsPrenom.text;
    [self.champsPrenom resignFirstResponder];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Ceci est une alerte."message:[[NSString alloc]initWithFormat:@"Ceci est une alerte pour vous, \n%@", self.nomAChanger.text] delegate: nil cancelButtonTitle: @"Ceci est un bouton"otherButtonTitles: nil];
                          [alert show];
}
- (IBAction)TextFieldReturn:(id)sender{
    [sender resignFirstResponder];
}
@end
