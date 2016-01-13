//
//  main.m
//  BinarySearch
//
//  Created by Carl Udren on 1/12/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BinarySearchController.h"

int main(int argc, const char * argv[]) {
    {
        BinarySearchController *controller = [[BinarySearchController alloc] init];
        NSArray *array = @[@2, @5, @8, @9, @10];
        NSInteger result = [controller binarySearch:array target:2];
        NSLog(@"Object is at index: %ld",result);
    
    }
    return 0;
}
