//
//  TablaProductos.h
//  BurgerKing
//
//  Created by Daniel Garcimartín Herráez on 6/10/16.
//  Copyright © 2016 Daniel Garcimartín Herráez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Quickblox/Quickblox.h>

@interface TablaProductos : UITableViewCell {
    IBOutlet UIImageView * imagenProducto;
    IBOutlet UILabel * lblProducto;
    IBOutlet UILabel * lblPrecio;
}

-(void)setModificarLabel:(NSString*)label;
-(void)setModificarLabelPunt:(float)labelPunt;
-(void) descargarImg :(int)cid;

@end
