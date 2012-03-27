//
//  DKDrawBoard.h
//  Sketch
//
//  Created by 付 乙荷 on 12-3-13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DKDrawCanvas.h"
#import "PKGeometryPasterLibrary.h"

@interface DKDrawBoard : NSObject
{
    NSMutableArray *drawingPens;
    DKDrawCanvas *drawCanvas;
    PKGeometryPasterLibrary *geometryPasterLibrary;
    
    //DKEraser *eraser;
}

@end
