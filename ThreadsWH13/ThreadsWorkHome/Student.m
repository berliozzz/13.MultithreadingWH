//
//  Student.m
//  ThreadsWorkHome
//
//  Created by Nikolay Berlioz on 22.09.15.
//  Copyright © 2015 Nikolay Berlioz. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void) howIsAnswer: (NSInteger) numGuess range:(NSInteger) numRange resultBlock: (void(^)(NSString*, CGFloat)) block
{
    __block NSInteger randomNum;
    __block NSInteger count = 0;
    CGFloat startTime = CACurrentMediaTime();
    __weak Student *weakSelf = self;
        
    dispatch_queue_t queue = dispatch_queue_create("stoma.aka.berlioz.queue", DISPATCH_QUEUE_SERIAL);
    dispatch_async(queue, ^{
        
    NSLog(@"%@ started", [self name]);
        
    while (numGuess != randomNum)
    {
        randomNum = arc4random() % (numRange) + 1;
        count++;
    }
    
    block(weakSelf.name, CACurrentMediaTime() - startTime);
    });
}

@end
