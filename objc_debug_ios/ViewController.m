//
//  ViewController.m
//  objc_debug_ios
//
//  Created by xurunkang on 2020/9/9.
//

#import "ViewController.h"

extern void fast_method_exchangeImplementations(void);

@interface ViewController ()

@end

@implementation ViewController

+ (void)load
{
    printf("load\n");
}

__attribute__((constructor)) static void entry(void)
{
    printf("constructor\n");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    printf("viewDidLoad");

    fast_method_exchangeImplementations();
}


@end
