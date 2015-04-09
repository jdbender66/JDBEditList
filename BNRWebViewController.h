//
//  BNRWebViewController.h
//  HomePwner
//
//  Created by Joseph Bender on 4/8/15.
//  
//

#import <UIKit/UIKit.h>

@class BNRItem;

@interface BNRWebViewController : UIViewController

@property (nonatomic, strong) NSString *UrlAddress;

@property (nonatomic, strong) IBOutlet UIWebView *webView;

@end
