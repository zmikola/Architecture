//
//  SearchInteractor.h
//  dependency
//
//  Created by Zsolt Mikola on 27/11/2016.
//  Copyright © 2016 Zsolt Mikola. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SearchModuleProtocols.h"

@protocol SearchInteractorDependencies <NSObject>

@property (nonatomic, strong, readonly) NSUserDefaults *userDefaults;
@property (nonatomic, strong, readonly) id<SearchCompositor> compositor;

@end

@interface SearchInteractor : NSObject <SearchInteractor>


@end
