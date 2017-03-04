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
    
    self.mapView.delegate = self;
    
    // create locations
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

    // define map span
    MKCoordinateSpan span;
    span.latitudeDelta = 0.028;
    span.longitudeDelta = 0.028;
    
    // create region, with span and center
    MKCoordinateRegion region;
    region.span = span;
    region.center = location2;
    
    // center the map
    [self.mapView setRegion:region animated:YES];
    
    // create annotations
    Location *annotation1 = [[Location alloc] initWithCoordinate:location1];
    annotation1.title = @"Nhà thờ Đức Bà";
    annotation1.subtitle = @"Notre Dame";
    annotation1.logo = [UIImage imageNamed:@"pin"];
    annotation1.url = [NSURL URLWithString:@"http://wwww.google.com"];
    
    Location *annotation2 = [[Location alloc] initWithCoordinate:location2];
    annotation2.title = @"Nhà hát thành phố";
    annotation2.subtitle = @"Theatre";
    annotation2.logo = [UIImage imageNamed:@"pin"];
    annotation2.url = [NSURL URLWithString:@"http://www.google.com"];
    
    Location *annotation3 = [[Location alloc] initWithCoordinate:location3];
    annotation3.title = @"Nhà hát thành phố";
    annotation3.subtitle = @"Theatre";
    annotation3.logo = [UIImage imageNamed:@"pin"];
    annotation3.url = [NSURL URLWithString:@"http://www.google.com"];
    
    self.annotations = [[NSArray alloc] initWithObjects:annotation1, annotation2, annotation3, nil];
    
    // add annotations to the map
    [self.mapView addAnnotations:self.annotations];
    
    // add an overlay to the map
    // create a circle around the center of the map (distance in meters)
    MKCircle *circle = [MKCircle circleWithCenterCoordinate:location1 radius:2000];
    [self.mapView addOverlay:circle];
    
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

    
    
    
    
    
}

@end
