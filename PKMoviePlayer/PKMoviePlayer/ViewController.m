//
//  ViewController.m
//  PKMoviePlayer
//
//  Created by Pawan kumar on 12/29/17.
//  Copyright © 2017 Pawan Kumar. All rights reserved.
//

#import "ViewController.h"
@import AVFoundation;
@import AVKit;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Configuration
    [self configurationAVPlayer];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)configurationAVPlayer{
  
    // grab a local URL to our video
    NSURL *videoURL = [[NSBundle mainBundle] URLForResource:@"popeye" withExtension:@"mp4"];
    
    // create an AVPlayer
    AVPlayer *player = [AVPlayer playerWithURL:videoURL];
    
    // create a player view controller
    AVPlayerViewController *controller = [[AVPlayerViewController alloc]init];
    controller.player = player;
    [player play];
    
    // show the view controller
    [self addChildViewController:controller];
    [self.view addSubview:controller.view];
    //Frame
    CGRect mainFrame = [[UIScreen mainScreen] bounds];
    CGFloat avPlayerX = 10;
    CGFloat avPlayerY = 100;
    
    CGRect avPlayerFrame = CGRectMake(avPlayerX, avPlayerY, mainFrame.size.width-2*avPlayerX, mainFrame.size.width-2*avPlayerX);
    
    controller.view.frame = avPlayerFrame;

}


@end
