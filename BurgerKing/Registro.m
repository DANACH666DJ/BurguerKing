//
//  Registro.m
//  BurgerKing
//
//  Created by Daniel Garcimartín Herráez on 29/9/16.
//  Copyright © 2016 Daniel Garcimartín Herráez. All rights reserved.
//

#import "Registro.h"
#import "AppDelegate.h"


@interface Registro ()

@end

@implementation Registro

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)accionRegistrar:(id)sender{
    
    
    
    QBUUser *user = [QBUUser user];
    user.password = txtContraseña.text;
    user.email = txtEmail.text;
    user.login = txtNombre.text;
    
    // Registration/sign up of User
    [QBRequest signUp:user successBlock:^(QBResponse *response, QBUUser *user) {
        [self performSegueWithIdentifier:@"ferrari2" sender:self ];
        
        
        
    } errorBlock:^(QBResponse *response) {
        NSLog(@"Usuario o contraseña incorrectos");
        
    }];

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
