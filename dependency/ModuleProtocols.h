//
//  ModuleProtocols.h
//  dependency
//
//  Created by Zsolt Mikola on 27/11/2016.
//  Copyright © 2016 Zsolt Mikola. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DependantObject.h"

@protocol ModuleProtocols <NSObject, DependantObject>

+ (NSArray<NSString *>*)routes;

@end
