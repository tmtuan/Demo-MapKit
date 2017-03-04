//
//  Location.m
//  DemoMapKit
//
//  Created by ThaoLT on 3/4/17.
//  Copyright © 2017 tmtuan. All rights reserved.
//

#import "Location.h"


@implementation Location

@synthesize coordinate=_coordinate;
@synthesize title=_title;
@synthesize subtitle=_subtitle;
@synthesize logo=_logo;
@synthesize url=_url;

- (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate
{
    self.coordinate = coordinate;
    return self;
}

@end
