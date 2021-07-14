//
//  main.m
//  Lab9
//
//  Created by Dylan Park on 2021-07-14.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        NSLog(@"Default menu: \n'pepperoni' for large pepperoni \n'size meatlovers' for meatlovers with specified size");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSString *firstWordForSize = commandWords[0];
            NSArray *restWordsForToppings = [[NSArray alloc] initWithArray: [commandWords subarrayWithRange:NSMakeRange(1, commandWords.count - 1)]];
            
            // And then send some message to the kitchen...
            Pizza *newPizza = [Pizza new];
            if ([firstWordForSize  isEqual: @"pepperoni"]) {
                newPizza = [Kitchen largePepperoni];
            } else if ([restWordsForToppings[0] isEqual:@"meatlovers"]) {
                enum PizzaSize orderedSize = [restaurantKitchen pizzaSizeConverter:firstWordForSize];
                newPizza = [Kitchen meatLoversWithSize:orderedSize];
            } else {
                enum PizzaSize orderedSize = [restaurantKitchen pizzaSizeConverter:firstWordForSize];
                newPizza = [restaurantKitchen makePizzaWithSize:orderedSize toppings:restWordsForToppings];
            }
            
            NSLog(@"Ordered Pizza [Size: %@, Toppings: %@]",[newPizza returnSize], [newPizza returnToppings]);
            
        }

    }
    return 0;
}
