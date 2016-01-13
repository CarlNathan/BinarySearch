//
//  BinarySearchController.m
//  BinarySearch
//
//  Created by Carl Udren on 1/12/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import "BinarySearchController.h"

@implementation BinarySearchController

-(NSInteger)binarySearch:(NSArray *)array target:(NSInteger)target{
    NSInteger firstIndexPoint = 0;
    NSInteger lastIndexPoint = [array count] -1;
    NSInteger midpoint = (lastIndexPoint)/2;

    while (YES) {
        NSInteger inspected = [[array objectAtIndex:midpoint] integerValue];
        if (inspected == target) {
            return midpoint;
        } else if (midpoint == 0 || midpoint == lastIndexPoint) {
            break;
        }else if (inspected < target) {
            firstIndexPoint = midpoint;
            midpoint = (lastIndexPoint - firstIndexPoint +1)/2 + firstIndexPoint;
            continue;
        } else if (inspected > target) {
            lastIndexPoint = midpoint;
            midpoint = (lastIndexPoint - firstIndexPoint)/2;
            continue;
        }
        
    }
    return -1;
}


@end
