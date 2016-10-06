//
//  TablaProductos.h
//  BurgerKing
//
//  Created by Daniel Garcimartín Herráez on 6/10/16.
//  Copyright © 2016 Daniel Garcimartín Herráez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TablaProductos : UITableViewCell {
    IBOutlet UIImageView * imagenProducto;
    IBOutlet UILabel * lblProducto;
    IBOutlet UILabel * lblPrecio;
}

@end
