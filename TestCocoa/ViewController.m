//
//  ViewController.m
//  TestCocoa
//
//  Created by Mark Meyer on 2/26/15.
//  Copyright (c) 2015 Sharethrough. All rights reserved.
//

#import "ViewController.h"

#import "AdView.h"

NSString *kPlacementKey = @"e7244b42";

@interface ViewController ()

@property (weak, nonatomic) SharethroughSDK *sdk;

@end

@implementation ViewController

BOOL didPlace;

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.sdk = [SharethroughSDK sharedTestSafeInstanceWithAdType:STRFakeAdTypeInstagram];
    self.sdk = [SharethroughSDK sharedInstance];
    [self.sdk prefetchAdForPlacementKey:kPlacementKey delegate:self];
    didPlace = false;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)placeAd {
    if (!didPlace) {
        didPlace = true;
        [self.sdk placeAdInView:(AdView*)self.view placementKey:kPlacementKey presentingViewController:self index:0 delegate:self];
    }
}

#pragma MARK - STRAdViewDelegate

- (void)adView:(id<STRAdView>)adView didFetchAdForPlacementKey:(NSString *)placementKey atIndex:(NSInteger)adIndex {
    ALog(@"");
    [self placeAd];
}

- (void)adView:(id<STRAdView>)adView didFailToFetchAdForPlacementKey:(NSString *)placementKey atIndex:(NSInteger)adIndex {
    ALog(@"");
    AdView *aView = (AdView *)self.view;
    aView.headlineView.text = @"No Ad to show";
}

@end
