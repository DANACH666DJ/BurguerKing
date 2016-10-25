//
//  Paypal.m
//  BurgerKing
//
//  Created by Daniel Garcimartín Herráez on 13/10/16.
//  Copyright © 2016 Daniel Garcimartín Herráez. All rights reserved.
//

#import "Paypal.h"

@interface Paypal ()
@property(nonatomic,strong)PayPalConfiguration*payPalconfig;

@end

@implementation Paypal

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _payPalconfig = [[PayPalConfiguration alloc] init];
    _payPalconfig.acceptCreditCards=YES;
    _payPalconfig.merchantName=@"iOSetutorials.com";
    _payPalconfig.merchantPrivacyPolicyURL=[NSURL URLWithString:@"https://www.paypal.com/webapps/app/ua/privacy-full"];
    _payPalconfig.merchantUserAgreementURL=[NSURL URLWithString:@"https://www.paypal.com/webapps/app/ua/useragreement-full"];
    _payPalconfig.languageOrLocale = [NSLocale preferredLanguages][0];
    
    _payPalconfig.payPalShippingAddressOption =  PayPalShippingAddressOptionPayPal ;
    
    NSLog(@"Pay Pal SDK:%@",[PayPalMobile libraryVersion]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)PaypalPaymentProcess:(id)sender {
    PayPalItem *item1=[PayPalItem itemWithName:@"iPhone6" withQuantity:1 withPrice:[NSDecimalNumber decimalNumberWithString:@"745.30"] withCurrency:@"USD" withSku:@"SKU-iPhone6"];
    PayPalItem *item2=[PayPalItem itemWithName:@"MacBook Pro" withQuantity:1 withPrice:[NSDecimalNumber decimalNumberWithString:@"1745.30"] withCurrency:@"USD" withSku:@"SKU-MacBookPro"];
    NSArray *items=@[item1, item2];
    
    NSDecimalNumber *subtotal=[PayPalItem totalPriceForItems:items];
    NSDecimalNumber *shipping=[[NSDecimalNumber alloc]initWithString:@"5,48"];
    NSDecimalNumber *tax=[[NSDecimalNumber alloc]initWithString:@"1,75"];
    
    PayPalPaymentDetails *paymentDetails=[PayPalPaymentDetails paymentDetailsWithSubtotal:subtotal withShipping:shipping withTax:tax];
    NSDecimalNumber *total=[[subtotal decimalNumberByAdding:shipping]decimalNumberByAdding:tax];
    
    PayPalPayment *payment=[[PayPalPayment alloc]init];
    payment.amount=total;
    payment.currencyCode=@"USD";
    payment.shortDescription=@"My payment";
    payment.items=items;
    payment.paymentDetails=paymentDetails;
    
    if(!payment.processable) {
        //write some code id payment -ve
    }
    //self.payPalconfig.acceptCreditCards=self.acceptCreditCards;
    
    PayPalPaymentViewController *paymentViewController=[[PayPalPaymentViewController alloc]initWithPayment:payment configuration:self.payPalconfig delegate:self];
    [self presentViewController:paymentViewController animated:YES completion:nil];    
}

#pragma mark - PaypalSDKDelegate Mathods
-(void)payPalPaymentDidCancel:(PayPalPaymentViewController *)paymentViewController {
    NSLog(@"Paypal Payment Cancel!!!");
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)payPalPaymentViewController:(PayPalPaymentViewController *)paymentViewController didCompletePayment:(PayPalPayment *)completedPayment {
    NSLog(@"Paypal Payment Success!!!");
    [self dismissViewControllerAnimated:YES completion:nil];
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
