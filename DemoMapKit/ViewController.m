//
//  ViewController.m
//  DemoMapKit
//
//  Created by ThaoLT on 3/3/17.
//  Copyright © 2017 tmtuan. All rights reserved.
//

#import "ViewController.h"
#import "Location.h"

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
    if (self.mapView.annotations)
    {
        [self.mapView removeAnnotations:self.mapView.annotations];
    }
    if (self.annotations)
    {
        [self.mapView addAnnotations:self.annotations];
    }
}

- (void)setMapView:(MKMapView *)mapView
{
    self.mapView = mapView;
    [self updateMapView];

}

- (void)setAnnotations:(NSArray *)annotations
{

    // Location 1
    CLLocationCoordinate2D location1;
    location1.latitude = 10.779784;
    location1.longitude = 106.698995;
    
    
    // location 2
    CLLocationCoordinate2D location2;
    location2.latitude = 10.776517;
    location2.longitude = 106.703096;
    
    
    // location 3
    CLLocationCoordinate2D location3;
    location3.latitude = 10.777961;
    location3.longitude = 106.696234;
    
}

@end
