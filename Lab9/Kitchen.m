//
//  Kitchen.m
//  Lab9
//
//  Created by Dylan Park on 2021-07-14.
//

#import "Kitchen.h"

@implementation Kitchen

- (enum PizzaSize) pizzaSizeConverter: (NSString *) size {
    NSString *sizeInLowerCase = [size lowercaseString];
    if ([sizeInLowerCase  isEqual: @"small"]) {
        return small;
    } else if ([sizeInLowerCase  isEqual: @"medium"]) {
        return medium;
    } else if ([sizeInLowerCase  isEqual: @"large"]) {
        return large;
    } else {
        return medium;
    }
}

- (Pizza *)makePizzaWithSize:(enum PizzaSize)size toppings:(NSArray *)toppings {
    return [[Pizza alloc] init:size toppings:toppings];
}

+ (Pizza *) largePepperoni {
    return [[Pizza alloc] init:large toppings:@[@"pork", @"beef", @"cheese", @"tomato"]];
}

+ (Pizza *) meatLoversWithSize: (enum PizzaSize) size {
    return [[Pizza alloc] init:size toppings:@[@"pork", @"beef", @"chiken", @"lamb"]];
}

@end
