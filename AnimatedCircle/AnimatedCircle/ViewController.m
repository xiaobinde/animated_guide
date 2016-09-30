//
//  ViewController.m
//  AnimatedCircle
//
//  Created by Ocean on 9/27/16.
//  Copyright © 2016 Ocean. All rights reserved.
//

#import "ViewController.h"
#import "CicleView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *mySlider;
@property (weak, nonatomic) IBOutlet UILabel *currentVlueLabel;

@property (nonatomic,strong) CicleView *cicleView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.mySlider addTarget:self action:@selector(valuechanged:) forControlEvents:UIControlEventValueChanged];

    self.cicleView = [[CicleView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2 - 320/2, self.view.frame.size.height/2 - 320/2, 320, 320)];
    [self.view addSubview:self.cicleView];
    
    //首次进入
    self.cicleView.circleLayer.progress = _mySlider.value;
}


-(void)valuechanged:(UISlider *)sender{
    self.currentVlueLabel.text = [NSString stringWithFormat:@"Current:  %f",sender.value];
    self.cicleView.circleLayer.progress = sender.value;
}


@end
