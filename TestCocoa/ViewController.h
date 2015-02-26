//
//  ViewController.h
//  TestCocoa
//
//  Created by Mark Meyer on 2/26/15.
//  Copyright (c) 2015 Sharethrough. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SharethroughSDK/SharethroughSDK.h>

#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)

@interface ViewController : UIViewController <STRAdViewDelegate>


@end

