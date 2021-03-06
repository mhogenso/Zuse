//
//  UIColor+ZuseColors.m
//  Zuse
//
//  Created by Parker Wightman on 3/1/14.
//  Copyright (c) 2014 Michael Hogenson. All rights reserved.
//

#import "UIColor+ZuseColors.h"

@implementation UIColor (ZuseColors)

+ (UIColor *)zuseBackgroundGrey {
    return [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0];
}

+ (UIColor *)zuseYellow {
    return [UIColor colorWithRed:1.00 green:0.89 blue:0.55 alpha:1.0];
}

+ (UIColor *)zuseGreen {
    return [UIColor colorWithRed:0.37 green:0.68 blue:0.32 alpha:1.0];
}

+ (UIColor *)zuseBlue {
    return [UIColor colorWithRed:0.42 green:0.69 blue:0.82 alpha:1.0];
}

+ (UIColor *)zuseExpressionEditorTintColor {
    return [UIColor colorWithRed:0.4157 green:0.694 blue:0.8157 alpha:1.0];
}

+ (UIColor *)zuseEditorTextColor {
    return [UIColor zuseBackgroundGrey];
}

+ (UIColor *)zuseEditorTextShadowColor {
    return [UIColor clearColor];
}

@end
