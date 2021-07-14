//
//  Pizza.m
//  Lab9
//
//  Created by Dylan Park on 2021-07-14.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype) init: (enum PizzaSize) size toppings: (NSArray *) toppings {
    self = [super init];
    if (self) {
        _size = size;
        _toppings = [[NSArray alloc] initWithArray:toppings];
    }
    return self;
}

- (NSString *) returnSize {
    NSString *result = @"";
    switch (self.size) {
        case small:
            result = @"small";
            break;
        case medium:
            result = @"medium";
            break;
        case large:
            result = @"large";
            break;
        default:
            result = @"error";
            break;
    }
    return result;
}

- (NSString *) returnToppings {
    NSString *toppingsInOneString = [self.toppings componentsJoinedByString:@" "];
    return toppingsInOneString;
}

@end
