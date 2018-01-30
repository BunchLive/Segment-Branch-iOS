//
//  BNCBranchIntegrationFactory.m
//  Segment-Branch Integration
//
//  Created by Edward Smith on 1/29/18.
//  Copyright © 2018 Branch. All rights reserved.
//

#import "BNCBranchIntegrationFactory.h"
#import "BNCBranchIntegration.h"

@implementation BNCBranchIntegrationFactory

+ (id)instance
{
    static dispatch_once_t once;
    static BNCBranchIntegrationFactory *sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (id)init
{
    self = [super init];
    return self;
}

- (id<SEGIntegration>)createWithSettings:(NSDictionary *)settings forAnalytics:(SEGAnalytics *)analytics
{
    return [[BNCBranchIntegration alloc] initWithSettings:settings];
}

- (NSString *)key
{
    return @"Branch Metrics";
}

@end
