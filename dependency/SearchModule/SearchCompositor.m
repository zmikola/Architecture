//
//  SearchCompositor.m
//  dependency
//
//  Created by Zsolt Mikola on 27/11/2016.
//  Copyright © 2016 Zsolt Mikola. All rights reserved.
//

#import "SearchCompositor.h"

@interface SearchCompositor ()

@property (nonatomic, weak) id<SearchViewController> viewController;

@end

@implementation SearchCompositor

- (void)setDependencies:(id<SearchCompositorDependencies>)dependencies{
    self.viewController = dependencies.viewController;
}

- (void)setTitle{
    self.viewController.title = @"View Controller";
}

@end
