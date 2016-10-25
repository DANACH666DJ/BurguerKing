//
//  QBAdmin.h
//  BurgerKing
//
//  Created by Daniel Garcimartín Herráez on 18/10/16.
//  Copyright © 2016 Daniel Garcimartín Herráez. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol QBAdminDelegate;
@interface QBAdmin : NSObject

{
    
}

@property(nonatomic, weak) id<QBAdminDelegate> delegate;

-(void)login:(NSString*)user password:(NSString*)pass;

@end


@protocol QBAdminDelegate <NSObject>


@optional
-(void) loginSuccess:(BOOL) blsuccess;



@end
