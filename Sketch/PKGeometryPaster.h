//
//  PKGeometryPaster.h
//  Sketch
//
//  Created by 付 乙荷 on 12-3-21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//
#import "PKGeometryPasterTemplate.h"
#import "PKGeometryImageView.h"

@interface PKGeometryPaster : PKGeometryPasterTemplate <NSCoding> {
     UIColor *colorOfPaster;
}

-(id)initWithGeometryImageView:(PKGeometryImageView*) imageView colorOfPaster:(UIColor*) color;

@property (retain, nonatomic) UIColor* colorOfPaster;
@end
