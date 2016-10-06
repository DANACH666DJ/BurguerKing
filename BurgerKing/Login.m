//
//  Login.m
//  BurgerKing
//
//  Created by Daniel Garcimartín Herráez on 6/10/16.
//  Copyright © 2016 Daniel Garcimartín Herráez. All rights reserved.
//

#import "Login.h"
#import "AppDelegate.h"

@interface Login ()

@end

@implementation Login

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(AppDelegate *)getAppDelegate{
    return (AppDelegate *)[[UIApplication sharedApplication] delegate];
}

- (void (^)(QBResponse *response, QBUUser *user))successBlock {
    return ^(QBResponse *response, QBUUser *user) {
        // Login succeeded
        [self performSegueWithIdentifier:@"ferrari" sender:self ];
    };
}

- (QBRequestErrorBlock)errorBlock {
    return ^(QBResponse *response) {
        // Handle error
    };
}

-(IBAction)accionLogin:(id)sender {
    [QBRequest logInWithUserLogin:txtUsuario.text password:txtPassword.text
                     successBlock:[self successBlock] errorBlock:[self errorBlock]];    
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
