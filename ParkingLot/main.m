//
//  main.m
//  ParkingLot
//
//  Created by NP ECE BME Centre on 5/7/15.
//  Copyright (c) 2015 NP ECE BME Centre. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // Create objects
        
        // Create 'john'(object) from 'Student'(Class)
        Student *john = [[Student alloc]init]; // Class Method
        
        // Calling property of an Object
        john.firstName = @"John";
        john.lastName = @"Tan";
        john.grade = 75;
        john.isLessThan30Km = YES;
        
        // Creat a student with name Roger
        Student *roger = [[Student alloc]init];
        roger.firstName = @"Roger";
        roger.lastName = @"Lim";
        roger.grade = 75;
        roger.isLessThan30Km = NO;
        
        // Creat a student with name Vajira
        Student *vijira = [[Student alloc]init];
        vijira.firstName = @"Vajira";
        vijira.lastName = @"Christoper";
        vijira.grade = 75;
        vijira.isLessThan30Km = YES;
        
        // Creat a student with name YanBin
        Student *yanbin = [[Student alloc]init];
        yanbin.firstName = @"YanBin";
        yanbin.lastName = @"Wong";
        yanbin.grade = 70;
        yanbin.isLessThan30Km = NO;
        
        // Creat a student with name Alan
        Student *alan = [[Student alloc]init];
        alan.firstName = @"Alan";
        alan.lastName = @"Tan";
        alan.grade = 65;
        alan.isLessThan30Km = YES;
        
        // Creat a student with name Roshan
        Student *roshan =[[Student alloc]init];
        roshan.firstName = @"Roshan";
        roshan.lastName = @"Prakash";
        roshan.grade = 60;
        roshan.isLessThan30Km = NO;
        
        // Creat a student with name Sanat
        Student *sanat =[[Student alloc]init];
        sanat.firstName = @"Sanat";
        sanat.lastName = @"Beckham";
        sanat.grade = 55;
        sanat.isLessThan30Km = YES;

        // An array of names, CollectionType
        NSArray *students =@[john, roger, vijira, yanbin, alan, roshan, sanat];
        
        // For-each e.g. for (ClassType *ObjectType in CollectionType)
        for (Student *eachStudent in students){
            // Calling Method on an Object
            float parkingAmount = [eachStudent calculateParkingFees:eachStudent.isLessThan30Km];  // Instance Method
            NSLog(@"%@'s parking fees is %.2f\n",eachStudent.firstName, parkingAmount);
        }
        
    }
    return 0;
}
