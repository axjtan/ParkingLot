//
//  Student.h
//  ParkingLot
//
//  Created by NP ECE BME Centre on 5/7/15.
//  Copyright (c) 2015 NP ECE BME Centre. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kPARKING_CHARGES 10;

@interface Student : NSObject

// Pointer before variable name when accessing an object
// When using a Class Type, need to add a '*' before the variable
@property NSString *firstName;
@property NSString *lastName;

@property int grade;
@property BOOL isLessThan30Km;
@property float parkingFee;

-(float)calculateParkingFees:(BOOL)qualifiedByDistance grade:(int)studentGrade; // Instance Method due to "-"
                                                        // Class Method due to "+"

@end
