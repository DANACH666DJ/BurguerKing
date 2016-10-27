//
//  ViewControllerMapa.h
//  BurgerKing
//
//  Created by Daniel Garcimartín Herráez on 27/10/16.
//  Copyright © 2016 Daniel Garcimartín Herráez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapKit/MapKit.h"
#import <Quickblox/Quickblox.h>
#import "MapPin.h"
#import <CoreLocation/CoreLocation.h>

@interface ViewControllerMapa : UIViewController
{
    IBOutlet MKMapView *  mapaView;
    CLLocationManager *locationManager;
}

-(void)agregarPinMapa:(float)lat longitude:(float)lon;




@end
