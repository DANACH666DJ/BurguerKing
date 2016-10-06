//
//  TablaProductos.m
//  BurgerKing
//
//  Created by Daniel Garcimartín Herráez on 6/10/16.
//  Copyright © 2016 Daniel Garcimartín Herráez. All rights reserved.
//

#import "TablaProductos.h"
#import "AppDelegate.h"

@implementation TablaProductos

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(AppDelegate *)getAppDelegate{
    return (AppDelegate *)[[UIApplication sharedApplication] delegate];
}

@end
