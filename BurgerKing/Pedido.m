//
//  Pedido.m
//  BurgerKing
//
//  Created by Daniel Garcimartín Herráez on 6/10/16.
//  Copyright © 2016 Daniel Garcimartín Herráez. All rights reserved.
//

#import "Pedido.h"
#import "AppDelegate.h"

@interface Pedido ()

@end

@implementation Pedido

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
