//
//  PKGeometryPasterTemplate.h
//  Sketch
//
//  Created by 付 乙荷 on 12-3-21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PKGeometryImageView.h"

@interface PKGeometryPasterTemplate : NSObject {
    PKGeometryImageView *geometryImageView;         //保存几何贴纸的素材
    BOOL isCreated;
}

-(id)initWithContentsOfFile:(NSString *) filePath;  //使用图片路径对几何贴纸模板进行初始化

@property (retain, nonatomic) PKGeometryImageView *geometryImageView;
@property (nonatomic) BOOL isCreated;
@end
