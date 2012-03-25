//
//  PKGeometryPaster.m
//  Sketch
//
//  Created by 付 乙荷 on 12-3-21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "PKGeometryPaster.h"

@implementation PKGeometryPaster

@synthesize colorOfPaster;

-(id)initWithGeometryImageView:(PKGeometryImageView *)imageView colorOfPaster:(UIColor *)color {
    self = [super init];
    if (self && color) {
        geometryImageView = imageView;
        colorOfPaster = color;
        isCreated = TRUE;
        return self;
    } else {
        
        //参数color为空，异常处理
        return nil;
    }
}


//使用NSCoder对几何贴纸进行归档
-(id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        self.geometryImageView = [aDecoder decodeObjectForKey:@"geometryImageView"];
        self.isCreated = [aDecoder decodeBoolForKey:@"isCreated"];
        self.colorOfPaster = [aDecoder decodeObjectForKey:@"colorOfPaster"];
    }
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:geometryImageView forKey:@"geometryImageView"];
    [aCoder encodeBool:isCreated forKey:@"isCreated"];
    [aCoder encodeObject:colorOfPaster forKey:@"colorOfPaster"];
}
@end
