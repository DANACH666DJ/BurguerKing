//
//  Pedido.m
//  BurgerKing
//
//  Created by Daniel Garcimartín Herráez on 6/10/16.
//  Copyright © 2016 Daniel Garcimartín Herráez. All rights reserved.
//

#import "Pedido.h"
#import "AppDelegate.h"

@interface Pedido ()

@end

@implementation Pedido

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /*NSURL *direccion = [NSURL fileURLWithPath:@"http://www.youtube.com/embed/NIT84FPGZKE"];
     NSURLRequest *resultado = [NSURLRequest requestWithURL:direccion];
     [vistaWebVideo loadRequest:resultado];*/
    
    
    
    // Do any additional setup after loading the view.
    NSMutableDictionary *getRequest = [NSMutableDictionary dictionary];
    [getRequest setObject:@"33.0" forKey:@"tetas[gt]"];
    /*
     [getRequest setObject:@"5" forKey:@"limit"];
     [getRequest setObject:[NSNumber numberWithBool:NO] forKey:@"documentary"];
     [getRequest setObject:@"rating" forKey:@"sort_asc"];
     */
    
    [QBRequest objectsWithClassName:@"Productos" extendedRequest:getRequest successBlock:^(QBResponse *response, NSArray *objects, QBResponsePage *page) {
        // response processing
        objetos= objects;
        [uitableview reloadData];
        
    } errorBlock:^(QBResponse *response) {
        // error handling
        NSLog(@"Response error: %@", [response.error description]);
    }];
    
    
    // Do any additional setup after loading the view.
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(AppDelegate *)getAppDelegate{
    return (AppDelegate *)[[UIApplication sharedApplication] delegate];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return objetos.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TablaProductos* cell =(TablaProductos*)[tableView dequeueReusableCellWithIdentifier:@"table1cell"];
    
    
    QBCOCustomObject* obj=(QBCOCustomObject*)objetos[indexPath.row];
    
    NSString* sNombre=[obj.fields objectForKey:@"Nombre"];
    float iPuntuacion=[[obj.fields objectForKey:@"Precio"] floatValue];
    int iIMG=[[obj.fields objectForKey:@"cid"] intValue];
    
    [cell setModificarLabelPunt:iPuntuacion];
    [cell setModificarLabel:sNombre];
    [cell descargarImg:iIMG];
    //[cell setTextoLabel:@"HEY HEY !!!"];
    
    return cell;
    
    /*
     NSInteger *row =[indexPath row];
     if (row==0){
     [cell setModificarLabel:@"Hola"];
     }else if(row==1){
     [cell setModificarLabel:@"ewook"];
     }else if(row==2){
     [cell setModificarLabel:@"chewbaca"];
     }
     
     
     return cell;
     */
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self performSegueWithIdentifier:@"gordas" sender:self ];
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
