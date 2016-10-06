//
//  Login.h
//  BurgerKing
//
//  Created by Daniel Garcimartín Herráez on 6/10/16.
//  Copyright © 2016 Daniel Garcimartín Herráez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Login : UIViewController {
    IBOutlet UITextField * txtUsuario;
    IBOutlet UITextField * txtPassword;
    IBOutlet UIButton * btnAceptar;
    IBOutlet UIButton * btnCancelar;
}

@end
