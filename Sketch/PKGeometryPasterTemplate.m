//
//  PKGeometryPasterTemplate.m
//  Sketch
//
//  Created by 付 乙荷 on 12-3-21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "PKGeometryPasterTemplate.h"

@implementation PKGeometryPasterTemplate

@synthesize geometryImageView;
@synthesize isCreated;
-(id)initWithContentsOfFile:(NSString *)filePath {    
    //判断父类初始化成功 且 文件路径有效
    if (self = [super init]) {
        geometryImageView = [[PKGeometryImageView alloc] init];
        geometryImageView.image = [UIImage imageNamed:filePath];
        self.isCreated = FALSE;   //几何贴纸还没有被创建
        
        //插入初始化相关代码
        
        return self;
    } else
        return nil;         //初始化失败，可能文件路径无效，处理异常
}




@end