//
//  PKPasterTemplateLibrary.m
//  Sketch
//
//  Created by 付 乙荷 on 12-3-29.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "PKPasterTemplateLibrary.h"

@implementation PKPasterTemplateLibrary

@synthesize pasterTemplates;

-(id)initWithDataOfPlist {
    if (self = [super init]) {
        //读取Plist
        //get the plist file from bundle
        NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"DataOfPasterTemplates" ofType:@"plist"];   
        // build the array from the plist  
        NSArray *dataOfPasterTemplates = [[NSArray alloc]initWithContentsOfFile:plistPath];
        
        //读取出贴纸模板的数量，根据数量初始化贴纸模板数组
        NSUInteger sizeOfPasterTemplates = [dataOfPasterTemplates count];
        pasterTemplates = [[NSMutableArray alloc] initWithCapacity:sizeOfPasterTemplates];
        
        //遍历dataOfPasterTemplates贴纸模板数组
        for (int i = 0; i < sizeOfPasterTemplates; i++) {
            //初始化一个pasterTemplate
            PKPasterTemplate *pasterTemplate = [[PKPasterTemplate alloc] init];
            NSDictionary *dataOfPasterTemplate = [dataOfPasterTemplates objectAtIndex:i];
            
            NSString *fileName = [dataOfPasterTemplate objectForKey:@"FileName"];
            NSNumber *countOfGeoTemplates = [dataOfPasterTemplate valueForKey:@"CountOfGeoTemplates"];
            NSArray *dataOfGeoPasterTemplates = [dataOfPasterTemplate objectForKey:@"GeoPasterTemplates"];
                
            
            //遍历geoPasterTemplates几何贴纸模板数组
            NSUInteger sizeOfGeoPasterTemplates = [countOfGeoTemplates intValue];
            for (int j = 0; j < sizeOfGeoPasterTemplates; j++) {
                NSDictionary *dataOfGeoPasterTemplate = [dataOfGeoPasterTemplates objectAtIndex:j];
                //读取颜色数据，并构造一个颜色UIColor
                NSNumber *red = [dataOfGeoPasterTemplate objectForKey:@"Red"];
                NSNumber *blue = [dataOfGeoPasterTemplate objectForKey:@"Blue"];
                NSNumber *green = [dataOfGeoPasterTemplate objectForKey:@"Green"];
                NSNumber *alpha = [dataOfGeoPasterTemplate objectForKey:@"Alpha"];
                UIColor *geoTemplateColor = [[UIColor alloc] initWithRed:[red floatValue] green:[green floatValue] blue:[blue floatValue] alpha:[alpha floatValue]];

                //读取几何贴纸的View的frame信息，并构造一个CGRect
                NSNumber *x = [dataOfGeoPasterTemplate objectForKey:@"X"];
                NSNumber *y = [dataOfGeoPasterTemplate objectForKey:@"Y"];
                NSNumber *width = [dataOfGeoPasterTemplate objectForKey:@"Width"];
                NSNumber *height = [dataOfGeoPasterTemplate objectForKey:@"Height"];
                CGRect rect = CGRectMake([x intValue], [y intValue], [width intValue], [height intValue]);

                //读取几何贴纸模板的类型
                NSNumber *type = [dataOfGeoPasterTemplate objectForKey:@"Type"];

                //根据前面创建的UIColor和CGRect等信息，去创建几何贴纸模板对象
                PKGeometryPasterTemplate *geoPasterTemplate = [[PKGeometryPasterTemplate alloc] initWithFileName:fileName Color:geoTemplateColor Type:[type intValue] Rect:rect];
                
                //设置几何贴纸模板的View的frame
                geoPasterTemplate.geoTemplateImageView.frame = rect;
                
                //把几何贴纸模板对象，添加到贴纸模板的geoPasterTemplates数组中
                [pasterTemplate.geoPasterTemplates insertObject:geoPasterTemplate atIndex:j];
                //把几何贴纸模板的geoTemplateImageView添加到贴纸模板的父视图pasterView中
                [pasterTemplate.pasterView addSubview:geoPasterTemplate.geoTemplateImageView];
            }
            [pasterTemplates insertObject:pasterTemplate atIndex:i];
        }
    }
    return self;
}

@end
