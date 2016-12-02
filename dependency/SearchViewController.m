//
//  ViewController.m
//  dependency
//
//  Created by Zsolt Mikola on 25/11/2016.
//  Copyright © 2016 Zsolt Mikola. All rights reserved.
//

#import "SearchViewController.h"

@interface SearchViewController ()

@property (nonatomic, weak) UIWindow *window;
@property (nonatomic, weak) id<SearchInteractor> interactor;

@end

@implementation SearchViewController

- (void)setDependencies:(id<SearchViewControllerDependencies>)dependencies{
    self.interactor = dependencies.interactor;
    self.window = dependencies.window;
    self.window.rootViewController = self;
}


- (void)viewDidLoad{
    [super viewDidLoad];

    [self.interactor setTitle];
    self.view.backgroundColor = [UIColor greenColor];
}

- (void)setTitle:(NSString *)title{
    [super setTitle:title];
    NSLog(@"%@", title);
}

@end
