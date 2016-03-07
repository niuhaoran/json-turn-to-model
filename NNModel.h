//
//  NNMOdel.h
//  NN-xinwen
//
//  Created by niuhaoran on 16/2/21.
//  Copyright © 2016年 niuhaoran. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NNMOdel : NSObject

+ (instancetype)modelWithDict:(NSDictionary *)dict;
+ (NSArray *)arrayWithModelArray:(NSArray *)arr;

@end
