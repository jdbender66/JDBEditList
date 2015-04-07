//
//  BNRItemStore.h
//  HomePwner
//


#import <Foundation/Foundation.h>

@class BNRItem;

@interface BNRItemStore : NSObject

// accessor to all items in store
@property (nonatomic, readonly, copy) NSArray *allItems;

// accessor to singleton
+(instancetype) sharedStore;

// item is created in store; item is returned.
-(BNRItem*) createItem; 

@end
