//
//  Registro.h
//  BurgerKing
//
//  Created by Daniel Garcimartín Herráez on 29/9/16.
//  Copyright © 2016 Daniel Garcimartín Herráez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Registro : UIViewController
{
    IBOutlet UITextField * txtNombre;
    IBOutlet UITextField * txtContraseña;
    IBOutlet UITextField * txtRepContraseña;
    IBOutlet UITextField * txtEmail;
    IBOutlet UIButton * btonCancelar;
    IBOutlet UIButton * btonAceptar;
}


@end
