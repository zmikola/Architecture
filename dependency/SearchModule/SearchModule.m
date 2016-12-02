//
//  SearchModule.m
//  dependency
//
//  Created by Zsolt Mikola on 27/11/2016.
//  Copyright © 2016 Zsolt Mikola. All rights reserved.
//

#import "SearchModule.h"
#import "SearchModuleDependencies.h"
#import "SearchInteractor.h"
#import "SearchCompositor.h"
#import "SearchViewController.h"

@interface SearchModule () <SearchInteractorDependencies, SearchCompositorDependencies, SearchViewControllerDependencies>

@property (nonatomic, strong, readwrite) SearchInteractor *interactor;
@property (nonatomic, strong, readwrite) SearchCompositor *compositor;
@property (nonatomic, strong, readwrite) SearchViewController *viewController;
@property (nonatomic, strong, readwrite) NSUserDefaults *userDefaults;
@property (nonatomic, strong, readwrite) UIWindow *window;

@end

@implementation SearchModule

+(NSArray<NSString *> *)routes{
    return @[@"/search"];
}

- (instancetype)init{
    if (self = [super init]) {
        self.interactor = [SearchInteractor new];
        self.compositor = [SearchCompositor new];
        self.viewController = [SearchViewController new];
    }
    return self;
}

- (void)setDependencies:(id<SearchModuleDependencies>)dependencies{
    self.userDefaults = dependencies.userDefaults;
    self.window = dependencies.window;
    
    [self.interactor setDependencies:self];
    [self.compositor setDependencies:self];
    [self.viewController setDependencies:self];

    
}

- (void)didMakeTransitionFrom:(Class)state{
    
}

- (void)willMakeTransitionTo:(Class)state{
    
}

@end
