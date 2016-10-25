//
//  AppDelegate.h
//  BurgerKing
//
//  Created by Daniel Garcimartín Herráez on 27/9/16.
//  Copyright © 2016 Daniel Garcimartín Herráez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Quickblox/Quickblox.h>
#import "PayPalMobile.h"
#import "QBAdmin.h"




@interface AppDelegate : UIResponder <UIApplicationDelegate,QBAdminDelegate>


@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) QBAdmin *qbAdmin;


@end

