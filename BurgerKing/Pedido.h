//
//  Pedido.h
//  BurgerKing
//
//  Created by Daniel Garcimartín Herráez on 6/10/16.
//  Copyright © 2016 Daniel Garcimartín Herráez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TablaProductos.h"
#import <Quickblox/Quickblox.h>

@interface Pedido : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
   IBOutlet UITableView *  uitableview;
  NSArray * objetos;
}

@end
