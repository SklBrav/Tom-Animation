//
//  ViewController.m
//  汤姆猫
//
//  Created by qingyun on 15/11/16.
//  Copyright (c) 2015年 河南青云. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *photo;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"knockout_00.jpg"]];
//    image.frame = [UIScreen mainScreen].bounds;
//    [_photo addSubview:image];
//
//    NSBundle *bundle = [NSBundle mainBundle];
//    NSString *path = [bundle pathForResource:@"photo" ofType:@"plist"];
    
      }
- (void)playAnim:(int)count fliename:(NSString *)filename
{
    
    NSMutableArray *images = [NSMutableArray array];
    for (int i = 0; i <count; i++) {
        NSString *name = [NSString stringWithFormat:@"%@_%02d.jpg",filename,i];
        NSString *path = [[NSBundle mainBundle] pathForResource:name ofType:nil];
        UIImage *image1 = [[UIImage alloc] initWithContentsOfFile:path];
        [images addObject:image1];
    }
    _photo.animationImages = images;

    _photo.animationRepeatCount = 1;
    
    _photo.animationDuration = 0.1 * 46;
    
    [_photo startAnimating];
    

    }
- (IBAction)knockout:(UIButton *)sender {
    if (_photo.isAnimating) return;
    
    NSString *title = @"knockout";
    
    int count = 46;
   
    [self playAnim:count fliename:title];
}
- (IBAction)footleft:(UIButton *)sender {
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
