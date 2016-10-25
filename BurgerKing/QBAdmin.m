//
//  QBAdmin.m
//  BurgerKing
//
//  Created by Daniel Garcimartín Herráez on 18/10/16.
//  Copyright © 2016 Daniel Garcimartín Herráez. All rights reserved.
//

#import "QBAdmin.h"

@implementation QBAdmin

-(instancetype)init
{
    self = [super init];
    if(self){
        
    }
    
    return self;
    
}

-(void)login:(NSString*)user password:(NSString*)pass{
    //QBREQUEST(LOGIN...){
      //SUCCESS{
    [_delegate loginSuccess:TRUE];
    
    
    [_delegate loginSuccess:FALSE];
}


@end







