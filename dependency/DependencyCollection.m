//
//  DependencyManager.m
//  dependency
//
//  Created by Zsolt Mikola on 26/11/2016.
//  Copyright © 2016 Zsolt Mikola. All rights reserved.
//

#import "DependencyCollection.h"

@interface DependencyCollection ()

@property (nonatomic, strong, readwrite) UIWindow* window;
@property (nonatomic, strong, readwrite) NSUserDefaults* userDefaults;

@end

@implementation DependencyCollection

- (instancetype)init{
    if (self = [super init]) {
        self.window = [[UIWindow alloc] initWithFrame: [[UIScreen mainScreen] bounds]];
        [self.window makeKeyAndVisible];
        self.userDefaults = [NSUserDefaults standardUserDefaults];
    }
    return self;
}

@end
