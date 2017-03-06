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
    
    
    // add an overlay to the map
    // create a circle around the center of the map (distance in meters)
    MKCircle *circle = [MKCircle circleWithCenterCoordinate:location2 radius:2000];
    [self.mapView addOverlay:circle];
    
    //create new annotation
    MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
    annotation.coordinate = location2;
    annotation.title = @"Nhà hát thành phố";
    annotation.subtitle = @"City Theatre";
    
    // create annotation for location 1
    Location *notreDameCathedral = [[Location alloc] initWithCoordinate:location1];
    notreDameCathedral.title = @"Notre Dame Cathedral";
    notreDameCathedral.subtitle = @"Nhà thờ Đức Bà";
    
    // add annotation to map
    [self.mapView addAnnotation:annotation];
    [self.mapView addAnnotation:notreDameCathedral];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - MapKit Delegate
- (nullable MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation
{
    // try to re-use pin annotation view
    MKPinAnnotationView *pin = (MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:@"Marker"];
    
    // non available in the cache
    if (pin == nil) {
        // allocate new pin
        pin = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"Marker"];
        
        // add detail disclosure button
        pin.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    }
    
    // change color of the pin
    pin.pinTintColor = [UIColor greenColor];
    
    // animate pin dropping
    pin.animatesDrop = YES;
    
    // show callout when tapped
    pin.canShowCallout = YES;
    
    return pin;
}

// Fired when user taps detail disclosure button
// show pop-up
- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Detail Button Tapped"
                                                    message:((Location *)view.annotation).title
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    
    [alert show];
}

@end
