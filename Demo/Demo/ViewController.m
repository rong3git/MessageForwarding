//
//  ViewController.m
//  Demo
//
//  Created by rongc on 12/27/20.
//

#import "ViewController.h"
#import "XYZClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    XYZClass *demoObject = [[XYZClass alloc]init];
    [demoObject testMethod];
    // Do any additional setup after loading the view.
}


@end
