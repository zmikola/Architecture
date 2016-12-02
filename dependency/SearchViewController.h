//
//  ViewController.h
//  dependency
//
//  Created by Zsolt Mikola on 25/11/2016.
//  Copyright © 2016 Zsolt Mikola. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SearchModuleProtocols.h"

@protocol SearchViewControllerDependencies <NSObject>

@property (nonatomic, strong, readonly) UIWindow *window;
@property (nonatomic, strong, readonly) id<SearchInteractor> interactor;

@end

@interface SearchViewController : UIViewController <SearchViewController>

@end

