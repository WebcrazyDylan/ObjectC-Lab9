//
//  Pizza.h
//  Lab9
//
//  Created by Dylan Park on 2021-07-14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Pizza : NSObject

enum PizzaSize {small, medium, large};

@property enum PizzaSize size;
@property NSArray *toppings;

- (instancetype) init: (enum PizzaSize) size toppings: (NSArray *) toppings;

- (NSString *) returnSize;
- (NSString *) returnToppings;


@end

NS_ASSUME_NONNULL_END
