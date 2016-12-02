//
//  SearchModuleProtocols.h
//  dependency
//
//  Created by Zsolt Mikola on 28/11/16.
//  Copyright © 2016 Zsolt Mikola. All rights reserved.
//

#import "DependantObject.h"

@protocol SearchViewController <NSObject, DependantObject>

@property (nonatomic, strong) NSString* title;

@end

@protocol SearchInteractor <NSObject, DependantObject>

- (void)setTitle;

@end

@protocol SearchCompositor <NSObject, DependantObject>

- (void)setTitle;

@end

