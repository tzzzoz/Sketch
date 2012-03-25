//
//  DKWaterColorPen.m
//  Sketch
//
//  Created by 付 乙荷 on 12-3-14.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "DKWaterColorPen.h"

@implementation DKWaterColorPen

-(id)initWithPenThickness:(int)thickness penColor:(NSString *)color penType:(PenType)type {
    if (self = [super initWithPenThickness:thickness penColor:color penType:type]) {
    penType = WaterColorPen;
    }
    return self;
}
@end
