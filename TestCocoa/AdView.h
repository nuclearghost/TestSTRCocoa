//
//  AdView.h
//  TestCocoa
//
//  Created by Mark Meyer on 2/26/15.
//  Copyright (c) 2015 Sharethrough. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SharethroughSDK/SharethroughSDK.h>

@interface AdView : UIView <STRAdView>
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *headlineView;
@property (weak, nonatomic) IBOutlet UILabel *sponsorView;
@property (weak, nonatomic) IBOutlet UIButton *infoBtn;

@end
