//
//  MyPoints.m
//  Finger Paint App
//
//  Created by Erin Luu on 2016-11-11.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import "MyLine.h"

@implementation MyLine

- (instancetype)init
{
    self = [super init];
    if (self) {
        _myPoints = [[NSMutableArray alloc] init];
    }
    return self;
}
@end
