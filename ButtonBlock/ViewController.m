//
//  ViewController.m
//  ButtonBlock
//
//  Created by luciuslu on 13-11-25.
//
//

#import "ViewController.h"
#import "UIButton+Block.h"

@implementation ViewController
@synthesize button,button2;

static int btn1Count = 0;
static int btn2Count = 0;
- (void)viewDidLoad
{
    [super viewDidLoad];

    [button addAction:^(UIButton *btn) {
        ++btn1Count;
        [btn setTitle:[NSString stringWithFormat:@"%d", btn1Count] forState:UIControlStateNormal];
    }];

    [button2 addAction:^(UIButton *btn) {
        ++btn2Count;
        [btn setTitle:[NSString stringWithFormat:@"%d",btn2Count] forState:UIControlStateNormal];
    } forControlEvents:UIControlEventTouchUpOutside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
