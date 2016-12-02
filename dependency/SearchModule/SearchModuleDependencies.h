//
//  SearchModuleDependencies.h
//  dependency
//
//  Created by Zsolt Mikola on 27/11/2016.
//  Copyright © 2016 Zsolt Mikola. All rights reserved.
//
#import <UIKit/UIKit.h>

@protocol SearchModuleDependencies <NSObject>

@property (nonatomic, strong, readonly) NSUserDefaults *userDefaults;
@property (nonatomic, strong, readonly) UIWindow *window;

@end
