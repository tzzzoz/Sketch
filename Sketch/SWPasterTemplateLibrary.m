//
//  SWPasterTemplateLibrary.m
//  Sketch
//
//  Created by 付 乙荷 on 12-3-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SWPasterTemplateLibrary.h"

@implementation SWPasterTemplateLibrary

@synthesize pasterTemplates;

-(id)initWithDataOfPlist {
    if (self = [super init]) {
        //get the plist file from bundle  
        NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"DataOfPasterTemplates" ofType:@"plist"];   
        // build the array from the plist  
        NSMutableArray *dataOfPasterTemplates = [[NSMutableArray alloc] initWithContentsOfFile:plistPath];
        
        return self;
    } else {
        return nil;
    }
        
}
@end
