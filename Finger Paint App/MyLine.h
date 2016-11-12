//
//  MyPoints.h
//  Finger Paint App
//
//  Created by Erin Luu on 2016-11-11.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyPoint;

@interface MyLine : NSObject
@property NSMutableArray<MyPoint *> * myPoints;
@property UIColor * lineColour;
@end
