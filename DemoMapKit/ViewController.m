//
//  ViewController.m
//  DemoMapKit
//
//  Created by ThaoLT on 3/3/17.
//  Copyright © 2017 tmtuan. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@property (nonatomic, readwrite) NSArray * annotations;

@end

@implementation ViewController

@synthesize mapView=_mapView;
@synthesize annotations=_annotations;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - methods
- (void)updateMapView
{

}

- (void)setMapView:(MKMapView *)mapView
{

}

- (void)setAnnotations:(NSArray *)annotations
{

}

@end
