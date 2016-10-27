//
//  CustomAnnotation.h
//  BurgerKing
//
//  Created by Daniel Garcimartín Herráez on 27/10/16.
//  Copyright © 2016 Daniel Garcimartín Herráez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


// Implementamos el protocolo MKAnnotation
@interface CustomAnnotation : NSObject  <MKAnnotation> {
    
    // Creamos un título
    NSString *title;
    // Declaramos un subtítulo
    NSString *subtitle;
    // Y una coordenada
    CLLocationCoordinate2D coordinate;
    
}
// Definimos sus propiedades
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

// Y el método de inicialización
- (id)initWithTitle:(NSString *)aTitle subtitle:(NSString*)aSubtitle andCoordinate:(CLLocationCoordinate2D)coord;

@end
