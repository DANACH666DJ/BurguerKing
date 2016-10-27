//
//  MapPin.m
//  BurgerKing
//
//  Created by Daniel Garcimartín Herráez on 27/10/16.
//  Copyright © 2016 Daniel Garcimartín Herráez. All rights reserved.
//

#import "MapPin.h"

@implementation MapPin

- (id)initWithCoordinate:(CLLocationCoordinate2D) coordinate
{
    self = [super init];
    
    if(self) {
        self.coordinate = coordinate;
    }
    
    return self;
}

@end
