//
//  SearchModule.h
//  dependency
//
//  Created by Zsolt Mikola on 27/11/2016.
//  Copyright © 2016 Zsolt Mikola. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ModuleProtocols.h"
#import "SearchModuleDependencies.h"
#import "TKState.h"

@interface SearchModule : TKState <ModuleProtocols>

- (void)routeTo:(NSString *)route;

@end
