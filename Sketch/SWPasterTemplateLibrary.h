//
//  SWPasterTemplateLibrary.h
//  Sketch
//
//  Created by 付 乙荷 on 12-3-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SWPasterTemplateLibrary : NSObject {
    NSMutableArray *pasterTemplates;
}

-(id)initWithDataOfPlist;

@property (retain, nonatomic) NSMutableArray *pasterTemplates;
@end
