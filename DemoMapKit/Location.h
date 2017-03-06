//
//  Location.h
//  DemoMapKit
//
//  Created by ThaoLT on 3/4/17.
//  Copyright © 2017 tmtuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface Location : NSObject <MKAnnotation>
{
    CLLocationCoordinate2D _coordinate;
    NSString * _title;
    NSString * _subtitle;
    UIImage * _logo;
    NSURL * _url;
}

@property (nonatomic, readwrite, assign) CLLocationCoordinate2D coordinate;
@property (nonatomic, readwrite, copy) NSString * title;
@property (nonatomic, readwrite, copy) NSString * subtitle;
@property (nonatomic, readwrite, copy) UIImage * logo;
@property (nonatomic, readwrite, copy) NSURL * url;

- (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate;

@end
