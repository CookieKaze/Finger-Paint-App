//
//  ViewController.m
//  Finger Paint App
//
//  Created by Erin Luu on 2016-11-11.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import "ViewController.h"
#import "DrawingView.h"


@interface ViewController ()
@property (strong, nonatomic) IBOutlet DrawingView *drawingView;
@property UIColor * currentColor;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.drawingView.myLines = [[NSMutableSet alloc] init];
    self.drawingView.myPenColor = [UIColor blackColor];
}

- (IBAction)setRedColor:(UIButton *)sender {
    self.currentColor = [UIColor redColor];
    [self setPenColour];
}
- (IBAction)setGreenColor:(UIButton *)sender {
    self.currentColor = [UIColor greenColor];
    [self setPenColour];
}
- (IBAction)setBlueColor:(UIButton *)sender {
    self.currentColor = [UIColor blueColor];
    [self setPenColour];
}
- (IBAction)setBlackColor:(UIButton *)sender {
    self.currentColor = [UIColor blackColor];
    [self setPenColour];
}

-(void) setPenColour {
    self.drawingView.myPenColor = self.currentColor;
    
}
@end
