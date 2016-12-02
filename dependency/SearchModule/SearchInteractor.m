//
//  SearchInteractor.m
//  dependency
//
//  Created by Zsolt Mikola on 27/11/2016.
//  Copyright © 2016 Zsolt Mikola. All rights reserved.
//

#import "SearchInteractor.h"

@interface SearchInteractor ()

@property (nonatomic, weak) id<SearchCompositor> compositor;
@property (nonatomic, weak) NSUserDefaults *userDefaults;

@end


@implementation SearchInteractor

- (void)setDependencies:(id<SearchInteractorDependencies>)dependencies{
    self.compositor = dependencies.compositor;
    self.userDefaults = dependencies.userDefaults;
}

- (void)setTitle{
    [self.compositor setTitle];
}

@end
