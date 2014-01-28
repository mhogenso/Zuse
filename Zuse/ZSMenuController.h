//
//  ZSMenuController.h
//  Zuse
//
//  Created by Michael Hogenson on 10/12/13.
//  Copyright (c) 2013 Michael Hogenson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZSMenuController : NSObject <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) void(^playSelected)();
@property (strong, nonatomic) void(^pauseSelected)();
@property (strong, nonatomic) void(^backSelected)();
@property (strong, nonatomic) void(^settingsSelected)();
@property (strong, nonatomic) void(^stopSelected)();
@end
