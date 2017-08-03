//
//  BOOLModallyWindowAnimating.h
//  Pods
//
//  Created by guangbool on 16/5/31.
//
//

#import <Foundation/Foundation.h>
#import "BOOLModallyWindowContextAnimationing.h"

@protocol BOOLModallyWindowAnimating <NSObject>

/**
 *  Asks your animator object for the duration (in seconds) of the animation.
 *
 *  @param animationContext Context for animation
 *
 *  @return The duration, in seconds, of your custom transition animation.
 */
- (NSTimeInterval)animationDuration:(id<BOOLModallyWindowContextAnimationing>)animationContext;

/**
 *  Tells your animator object to perform the animations.
 *
 *  @param animationContext Context for animation
 */
- (void)animate:(id<BOOLModallyWindowContextAnimationing>)animationContext;

@end
