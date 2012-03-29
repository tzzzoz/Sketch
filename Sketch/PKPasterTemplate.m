//
//  PKPasterTemplate.m
//  Sketch
//
//  Created by 付 乙荷 on 12-3-27.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "PKPasterTemplate.h"

@implementation PKPasterTemplate

@synthesize geoPasterTemplates;
@synthesize pasterView;

-(id)init {
    if (self = [super init]) {
        self.geoPasterTemplates = [[NSMutableArray alloc] init];
        self.pasterView = [[UIView alloc] init];
    }
    return self;
}
@end
