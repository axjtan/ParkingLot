//
//  main.m
//  ParkingLot
//
//  Created by NP ECE BME Centre on 5/7/15.
//  Copyright (c) 2015 NP ECE BME Centre. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UniversityStudent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // Create objects
        
        // Create 'john'(object) from 'Student'(Class)
        UniversityStudent *john = [[UniversityStudent alloc]init]; // Class Method
        
        // Calling property of an Object
        john.firstName = @"John";
        john.lastName = @"Tan";
        john.score = 75;
        john.isLessThan30Km = YES;
        
        // Creat a student with name Roger
        UniversityStudent *roger = [[UniversityStudent alloc]init];
        roger.firstName = @"Roger";
        roger.lastName = @"Lim";
        roger.score = 50;
        roger.isLessThan30Km = NO;
        
        // Creat a student with name Vajira
        UniversityStudent *vijira = [[UniversityStudent alloc]init];
        vijira.firstName = @"Vajira";
        vijira.lastName = @"Christoper";
        vijira.score = 75;
        vijira.isLessThan30Km = YES;
        
        // Creat a student with name YanBin
        UniversityStudent *yanbin = [[UniversityStudent alloc]init];
        yanbin.firstName = @"YanBin";
        yanbin.lastName = @"Wong";
        yanbin.score = 70;
        yanbin.isLessThan30Km = NO;
        
        // Creat a student with name Alan
        UniversityStudent *alan = [[UniversityStudent alloc]init];
        alan.firstName = @"Alan";
        alan.lastName = @"Tan";
        alan.score = 65;
        alan.isLessThan30Km = YES;
        
        // Creat a student with name Roshan
        UniversityStudent *roshan =[[UniversityStudent alloc]init];
        roshan.firstName = @"Roshan";
        roshan.lastName = @"Prakash";
        roshan.score = 60;
        roshan.isLessThan30Km = NO;
        
        // Creat a student with name Sanat
        UniversityStudent *sanat =[[UniversityStudent alloc]init];
        sanat.firstName = @"Sanat";
        sanat.lastName = @"Beckham";
        sanat.score = 55;
        sanat.isLessThan30Km = YES;

        // An array of names, CollectionType
        NSArray *students =@[john, roger, vijira, yanbin, alan, roshan, sanat];
        
        // For-each e.g. for (ClassType *ObjectType in CollectionType)
        for (UniversityStudent *eachStudent in students){
            // Calling Method on an Object
            float parkingAmount = [eachStudent calculateParkingFeesByQualifiedDistance:eachStudent.isLessThan30Km andGrade:eachStudent.score];  // Instance Method
            NSLog(@"%@'s parking fees is %.2f\n",eachStudent.firstName, parkingAmount);
        }
        
    }
    return 0;
}
