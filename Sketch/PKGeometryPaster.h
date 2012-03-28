//
//  PKGeometryPaster.h
//  Sketch
//
//  Created by 付 乙荷 on 12-3-21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//
#import "PKGeometryPasterTemplate.h"
#import "PKGeometryImageView.h"

//实现了NSCoding的协议，该类可以Archive到本地
@interface PKGeometryPaster : NSObject <NSCoding> 
{
    PKGeometryImageView *geoPasterImageView;     //这个view中保存了编辑等操作需要的数据
    UIColor *geoPasterColor;                     //几何贴纸的颜色
    GeometryType geoPasterType;                  //几何贴纸的类型
    int indexOfTemplateList;                     //几何贴纸对应几何模版列表的下标位置
}

//几何贴纸的创建依赖其对应的几何贴纸模板，存在依赖关系
//使用相应的几何贴纸模板来初始化几何贴纸
-(id)initWithGeometryPasterTemplate:(PKGeometryPasterTemplate*)geometryPasterTemplate Color:(UIColor*) color Type:(GeometryType)type;
-(id)initWithGeometryImageView:(PKGeometryImageView*)imageView Color:(UIColor*)color Type:(GeometryType)type;

@property (retain, nonatomic) PKGeometryImageView *geoPasterImageView;
@property (retain, nonatomic) UIColor *geoPasterColor;
@property (readwrite) GeometryType geoPasterType;
@property (readwrite) int indexOfTemplateList;
@end
