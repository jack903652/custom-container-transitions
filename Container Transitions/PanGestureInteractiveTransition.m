//
//  PanGestureInteractiveTransition.m
//  Container Transitions
//
//  Created by Alek Astrom on 2014-05-11.
//
//

#import "PanGestureInteractiveTransition.h"

@implementation PanGestureInteractiveTransition {
    BOOL _leftToRightTransition;
}

- (id)initWithGestureRecognizerInView:(UIView *)view recognizedBlock:(void (^)(UIPanGestureRecognizer *recognizer))gestureRecognizedBlock {
    
    self = [super init];
    if (self) {
        _gestureRecognizedBlock = [gestureRecognizedBlock copy];
        _recognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(pan:)];
        [view addGestureRecognizer:_recognizer];
    }
    return self;
}

- (void)pan:(UIPanGestureRecognizer*)recognizer {
    
    if (recognizer.state == UIGestureRecognizerStateBegan) {
        self.gestureRecognizedBlock(recognizer);
    }
}

@end
