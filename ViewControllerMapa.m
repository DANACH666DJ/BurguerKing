//
//  ViewControllerMapa.m
//  BurgerKing
//
//  Created by Daniel Garcimartín Herráez on 27/10/16.
//  Copyright © 2016 Daniel Garcimartín Herráez. All rights reserved.
//

#import "ViewControllerMapa.h"
#import "AppDelegate.h"
#import "CustomAnnotation.h"


@interface ViewControllerMapa ()

@end

@implementation ViewControllerMapa

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSMutableDictionary *getRequest = [NSMutableDictionary dictionary];
    
    [QBRequest objectsWithClassName:@"Coordenadas" extendedRequest:getRequest successBlock:^(QBResponse *response, NSArray *objects, QBResponsePage *page) {
        
        for(int i=0;i<objects.count;i++){
            QBCOCustomObject * filaObjeto = (QBCOCustomObject*)objects[i];
            double  Latitud=[[filaObjeto.fields objectForKey:@"lat" ]doubleValue];
            double  Longitud=[[filaObjeto.fields objectForKey:@"long" ]doubleValue];
            CLLocationCoordinate2D coord ={.latitude =Latitud, . longitude=Longitud};
            
            MapPin *pin =[[MapPin alloc] initWithCoordinate:coord];
            //pin.subtitle=geodata.status;
            NSString* sNombre=[filaObjeto.fields objectForKey:@"nombre"];
            pin.title= sNombre;
            
            
            
            pin.title= sNombre;
            
            
            
            [mapaView addAnnotation:pin];
            
        }
        
        // response processing
        
        
    } errorBlock:^(QBResponse *response) {
        // error handling
        NSLog(@"Response error: %@", [response.error description]);
    }];
    
    
    // Do any additional setup after loading the view.
    
    
    CGFloat newLat = 39.451916;
    CGFloat newLon = -0.387851;
    
    CLLocationCoordinate2D newCoord = {newLat, newLon};
    
    
    CustomAnnotation *annotation = [[CustomAnnotation alloc]initWithTitle: @"Valencia"
                                                                 subtitle: @"Has pinchado en Valencia"
                                                            andCoordinate:newCoord];
    [self->mapaView addAnnotation:annotation];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
