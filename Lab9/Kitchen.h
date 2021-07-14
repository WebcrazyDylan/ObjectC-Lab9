//
//  Kitchen.h
//  Lab9
//
//  Created by Dylan Park on 2021-07-14.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@interface Kitchen : NSObject

- (enum PizzaSize) pizzaSizeConverter: (NSString *) size;

- (Pizza *)makePizzaWithSize:(enum PizzaSize)size toppings:(NSArray *)toppings;

+ (Pizza *) largePepperoni;
+ (Pizza *) meatLoversWithSize: (enum PizzaSize) size;

@end

//NS_ASSUME_NONNULL_END
