//
//  PKGeometryPasterTemplate.m
//  Sketch
//
//  Created by 付 乙荷 on 12-3-21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "PKGeometryPasterTemplate.h"

@implementation PKGeometryPasterTemplate

@synthesize imageView;
@synthesize isCreated;
-(id)initWithContentsOfFile:(NSString *)filePath {    
    //判断父类初始化成功 且 文件路径有效
    if (self = [super init]) {
        imageView = [[PKGeometryImageView alloc] init];
        imageView.image = [UIImage imageNamed:filePath];
        self.isCreated = FALSE;   //几何贴纸还没有被创建
        
        //插入初始化相关代码
        
        return self;
    } else
        return nil;         //初始化失败，可能文件路径无效，处理异常
}

//使用NSCoder对几何贴纸模板进行归档
-(id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        self.imageView = [aDecoder decodeObjectForKey:@"imageView"];
        self.isCreated = [aDecoder decodeBoolForKey:@"isCreated"];
    }
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:imageView forKey:@"imageView"];
    [aCoder encodeBool:isCreated forKey:@"isCreated"];
}

@end