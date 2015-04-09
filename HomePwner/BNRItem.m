//
//  BNRItem.m
//  RandomItems
//


#import "BNRItem.h"

@implementation BNRItem

+ (instancetype)randomItem
{
    // Create an immutable array of three adjectives
    //NSArray *randomAdjectiveList = @[@"Wikipedia", @"Facebook", @"Instagram"];

    // Create an immutable array of three nouns
    NSArray *randomNounList = @[@"http://www.pitt.edu", @"http://www.Facebook.com", @"http://www.instagram.com"];

    // Get the index of a random adjective/noun from the lists
    // Note: The % operator, called the modulo operator, gives
    // you the remainder. So adjectiveIndex is a random number
    // from 0 to 2 inclusive.
    //NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];

    // Note that NSInteger is not an object, but a type definition
    // for "long"

    NSString *randomName = [NSString stringWithFormat:@"%@",
                            randomNounList[nounIndex]];

    

    BNRItem *newItem = [[self alloc] initWithItemName:randomName];

    return newItem;
}

- (instancetype)initWithItemName:(NSString *)name
{
    // Call the superclass's designated initializer
    self = [super init];

    // Did the superclass's designated initializer succeed?
    if (self) {
        // Give the instance variables initial values
        _itemName = name;
        
    }

    // Return the address of the newly initialized object
    return self;
}



- (instancetype)init
{
    return [self initWithItemName:@"Item"];
}

- (void)dealloc
{
    NSLog(@"Destroyed: %@", self);
}

- (NSString *)description
{
    NSString *descriptionString =
        [[NSString alloc] initWithFormat:@"%@",
         self.itemName];
    return descriptionString;
}

@end
