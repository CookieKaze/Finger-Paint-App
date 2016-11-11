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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.drawingView.myLines = [[NSMutableSet alloc] init];
    

}


@end
