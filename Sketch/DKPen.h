//
//  DKPen.h
//  Sketch
//
//  Created by 付 乙荷 on 12-3-13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
  WaterColorPen = 0  
}PenType;

@interface DKPen : NSObject
{
    int penThickness;
    NSString *penColor;
    PenType penType;
}

@property (nonatomic) int penThickness;
@property (retain, nonatomic) NSString *penColor;
@property (nonatomic) PenType penType;

-(id) initWithPenThickness:(int) thickness penColor:(NSString*) color penType:(PenType) type;

@end
