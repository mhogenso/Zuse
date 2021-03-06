//
//  ZSCodeTransforms.m
//  Zuse
//
//  Created by Parker Wightman on 3/15/14.
//  Copyright (c) 2014 Michael Hogenson. All rights reserved.
//

#import "ZSCodeTransforms.h"

ZSCodeTransformBlock ZSCodeTransformEveryBlock = ^NSDictionary *(NSDictionary *codeItem) {
    NSString *eventID = [NSUUID.UUID UUIDString];
    return @{
        @"suite": @[
            @{
                @"on_event": @{
                    @"name": eventID,
                    @"parameters": @[],
                    @"code": codeItem[@"every"][@"code"]
                }
            },
            @{
                @"call": @{
                    @"method": @"every_seconds",
                    @"parameters": @[codeItem[@"every"][@"seconds"], eventID]
                }
            }
        ]
    };
};

ZSCodeTransformBlock ZSCodeTransformAfterBlock = ^NSDictionary *(NSDictionary *codeItem) {
    NSString *eventID = [NSUUID.UUID UUIDString];
    return @{
        @"suite": @[
            @{
                @"on_event": @{
                    @"name": eventID,
                    @"parameters": @[],
                    @"code": codeItem[@"after"][@"code"]
                }
            },
            @{
                @"call": @{
                    @"method": @"after_seconds",
                    @"parameters": @[codeItem[@"after"][@"seconds"], eventID]
                }
            }
        ]
    };
};

ZSCodeTransformBlock ZSCodeTransformInBlock = ^NSDictionary *(NSDictionary *codeItem) {
    NSString *eventID = [NSUUID.UUID UUIDString];
    return @{
        @"suite": @[
            @{
                @"on_event": @{
                    @"name": eventID,
                    @"parameters": @[],
                    @"code": codeItem[@"in"][@"code"]
                }
            },
            @{
                @"call": @{
                    @"method": @"in_seconds",
                    @"parameters": @[codeItem[@"in"][@"seconds"], eventID]
                }
            }
        ]
    };
};