//
//  PanGestureInteractiveTransition.h
//  Container Transitions
//
//  Created by Alek Astrom on 2014-05-11.
//
//

#import <UIKit/UIKit.h>

@interface PanGestureInteractiveTransition : NSObject

- (id)initWithGestureRecognizerInView:(UIView *)view recognizedBlock:(void (^)(UIPanGestureRecognizer *recognizer))gestureRecognizedBlock;

@property (nonatomic, readonly) UIPanGestureRecognizer *recognizer;
@property (nonatomic, copy) void (^gestureRecognizedBlock)(UIPanGestureRecognizer *recognizer);

@end
