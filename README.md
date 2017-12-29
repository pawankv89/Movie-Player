
PKMoviePlayer
=========

## PKMoviePlayer.
------------
 Added Some screens here.
 
[![](https://github.com/pawankv89/PKMoviePlayer/blob/master/Screens/1.png)]
[![](https://github.com/pawankv89/PKMoviePlayer/blob/master/Screens/2.png)]
[![](https://github.com/pawankv89/PKMoviePlayer/blob/master/Screens/3.png)]
[![](https://github.com/pawankv89/PKMoviePlayer/blob/master/Screens/4.png)]

## Usage
------------
 iOS 9 Demo showing how to droodown on iPhone X Simulator in  Objective-C.


```objective-c

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


```

```objective-c




```

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each this release can be found in the [CHANGELOG](CHANGELOG.mdown). 
