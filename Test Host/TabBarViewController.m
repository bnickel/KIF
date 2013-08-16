//
//  TabBarViewController.m
//  KIF
//
//  Created by Seivan Heidari on 8/16/13.
//
//



@interface TabBarViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITabBarController *aTabBarController;
- (IBAction)popNavigation:(UIButton *)sender;
@end

@implementation TabBarViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  self.navigationController.navigationBarHidden = YES;
  self.aTabBarController = [[UITabBarController alloc] init];
  [self.view addSubview:self.aTabBarController.view];
  
  NSArray * viewControllers = @[];
  for (NSInteger i = 0; i != 6; i++) {
    UIViewController * vc = UIViewController.new;
    vc.title = @(i).stringValue;
    UIButton * btnPop = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnPop.frame = CGRectMake(10, 10, 200, 200);
    [btnPop setTitle:@"Test Suite" forState:UIControlStateNormal];
    [btnPop addTarget:self action:@selector(popNavigation:) forControlEvents:UIControlEventTouchUpInside];
    [vc.view addSubview:btnPop];
    viewControllers = [viewControllers arrayByAddingObject:vc];
  }
  self.aTabBarController.viewControllers = viewControllers;

}
- (IBAction)popNavigation:(UIButton *)sender
{
  [self.navigationController popViewControllerAnimated:YES];
}

@end
