//
//  AdView.m
//  TestCocoa
//
//  Created by Mark Meyer on 2/26/15.
//  Copyright (c) 2015 Sharethrough. All rights reserved.
//

#import "AdView.h"

@implementation AdView

- (UILabel *)adTitle {
    return self.headlineView;
}

- (UIImageView *)adThumbnail {
    return self.imgView;
}

- (UILabel *)adSponsoredBy {
    return self.sponsorView;
}

- (UIButton *)disclosureButton {
    return self.infoBtn;
}

@end
