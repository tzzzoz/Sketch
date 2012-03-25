//
//  DKPen.m
//  Sketch
//
//  Created by 付 乙荷 on 12-3-13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "DKPen.h"

@implementation DKPen

@synthesize penThickness;
@synthesize penColor;
@synthesize penType;

-(id)initWithPenThickness:(int)thickness penColor:(NSString *)color penType:(PenType)type {
    if (self = [super init]) {
        penThickness = thickness;
        penColor = color;
        penType = type;
    }
    return self;
}

@end
