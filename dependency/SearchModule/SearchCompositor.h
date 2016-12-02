//
//  SearchCompositor.h
//  dependency
//
//  Created by Zsolt Mikola on 27/11/2016.
//  Copyright © 2016 Zsolt Mikola. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SearchModuleProtocols.h"

@protocol SearchCompositorDependencies <NSObject>

@property (nonatomic, strong, readonly) id<SearchViewController> viewController;

@end


@interface SearchCompositor : NSObject <SearchCompositor>


@end
