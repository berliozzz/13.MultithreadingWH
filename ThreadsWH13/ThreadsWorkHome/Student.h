//
//  Student.h
//  ThreadsWorkHome
//
//  Created by Nikolay Berlioz on 22.09.15.
//  Copyright © 2015 Nikolay Berlioz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface Student : NSObject

@property (strong, nonatomic) NSString *name;

- (void) howIsAnswer: (NSInteger) numGuess range:(NSInteger) numRange resultBlock: (void(^)(NSString*, CGFloat)) block;

@end
