//
//  BNRItemsViewController.m
//  HomePwner
//


#import "BNRItemsViewController.h"
#import "BNRWebViewController.h"
#import "BNRItemStore.h"
#import "BNRItem.h"


@interface BNRItemsViewController ()
{
}
@end


@implementation BNRItemsViewController

- (instancetype)init
{
    // call the superclass' designated initializer
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        // initialize array with 5 items
        for (int i=0; i<5; i++) {
            [[BNRItemStore sharedStore] createItem];
        }
    }
    
    return self;
}

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class]
           forCellReuseIdentifier:@"UITableViewCell"];
}

// implementation required UITableViewDataSource method
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[[BNRItemStore sharedStore] allItems] count];
}

// implement required UITableViewDataSource method
-(UITableViewCell*) tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   // NSLog(@"tableView:cellForRowAtIndexPath:%d,%d", indexPath.section, indexPath.row);
        
    // get a cell from data pool
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
    // set text
    NSArray *items = [[BNRItemStore sharedStore] allItems];
    BNRItem *item = items[indexPath.row];
    
    cell.textLabel.text = [item description];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    BNRWebViewController *webViewController = [[BNRWebViewController alloc] init];
    
    NSArray *items = [[BNRItemStore sharedStore] allItems];
    BNRItem *selectedItem = items[indexPath.row];
    NSString *urlpick = selectedItem.itemName;
    
    webViewController.UrlAddress = urlpick;
    
    
    
    [self.navigationController pushViewController: webViewController animated:YES];
}

- (void)viewWillAppear:(BOOL)animated
{
   
    
  
    
}


@end
