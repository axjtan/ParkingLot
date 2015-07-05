//
//  Student.m
//  ParkingLot
//
//  Created by NP ECE BME Centre on 5/7/15.
//  Copyright (c) 2015 NP ECE BME Centre. All rights reserved.
//

#import "UniversityStudent.h"

@implementation UniversityStudent

-(float)calculateParkingFeesByQualifiedDistance:(BOOL)qualifiedByDistance andGrade:(int)studentGrade{
    
    float parkingDiscount = 0.0;
    float parkingCharge = (float) kPARKING_CHARGES;
    
    if (qualifiedByDistance) {
        parkingDiscount = 0.1;
        if(studentGrade>=70){
            parkingDiscount += 0.1;
        }
        else if(studentGrade>=60 && studentGrade<70){
            parkingDiscount += 0.05;
        }
        
    }
    else{
        parkingDiscount = 0.0;
    }
    self.parkingFee = parkingCharge - (parkingCharge*parkingDiscount);
    
    return self.parkingFee;
}

@end
