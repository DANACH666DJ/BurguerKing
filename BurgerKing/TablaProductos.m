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

-(void) setModificarLabel:(NSString*)label{
    lblProducto.text=label;
    
}

-(void)setModificarLabelPunt:(NSString*)labelPunt{
    lblPrecio.text=labelPunt;
}

-(void) descargarImg :(int)cid{
    [imagenProducto setImage:nil];
    
    [QBRequest downloadFileWithID:cid successBlock:^(QBResponse *response, NSData *fileData) {
        // do something with fileData
        UIImage* burguer = [UIImage imageWithData:fileData];
        [imagenProducto setImage:burguer];
    } statusBlock:^(QBRequest *request, QBRequestStatus *status) {
        NSLog(@"download progress: %f", status.percentOfCompletion);
    } errorBlock:^(QBResponse *response) {
        NSLog(@"error: %@", response.error);
    }];
    
}

-(AppDelegate *)getAppDelegate{
    return (AppDelegate *)[[UIApplication sharedApplication] delegate];
}

@end
