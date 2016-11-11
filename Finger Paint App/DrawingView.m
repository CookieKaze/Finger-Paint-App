//
//  DrawingView.m
//  Finger Paint App
//
//  Created by Erin Luu on 2016-11-11.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import "DrawingView.h"
#import "MyPoint.h"
#import "MyLine.h"


@implementation DrawingView

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.myCurrentLine = [MyLine new];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = touches.anyObject;
    CGPoint oldPoint = [touch previousLocationInView:self];
    CGPoint currentPoint = [touch locationInView:self];
    
    MyPoint * mypoint = [[MyPoint alloc] initWithOldPoint:oldPoint andNewPoint:currentPoint];
    [self.myCurrentLine.myPoints addObject:mypoint];
    [self setNeedsDisplay];
}

-(void) drawRect:(CGRect)rect {
    CGContextSetStrokeColorWithColor(UIGraphicsGetCurrentContext(), [UIColor greenColor].CGColor);
    //Get first point out
    
    
    for (MyPoint * myPoint in self.myCurrentLine.myPoints) {
        if ([self.myCurrentLine.myPoints indexOfObject:myPoint] == 0) {
            CGContextMoveToPoint(UIGraphicsGetCurrentContext(), myPoint.oldPoint.x, myPoint.newPoint.y);
        }else {
            CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), myPoint.oldPoint.x, myPoint.newPoint.y);
        }
    }
    CGContextStrokePath(UIGraphicsGetCurrentContext());
}



@end
