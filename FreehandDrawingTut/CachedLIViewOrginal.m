//
//  CachedLIView.m
//  FreehandDrawingTut
//
//  Created by David Cespedes on 30/11/12.
//  Copyright (c) 2012 LSR Marketing Service. All rights reserved.
//
/*
#import "CachedLIView.h"
@implementation CachedLIView
{
    UIBezierPath *path;
    UIImage *incrementalImage; // (1)
    
    CGPoint lettersPoints[3];
    
    BOOL isLineCorrect;
    float tolerance;
}
- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder])
    {
        [self setMultipleTouchEnabled:NO];
        [self setBackgroundColor:[UIColor whiteColor]];
        //[[UIColor redColor] setStroke];
        path = [UIBezierPath bezierPath];
        [path setLineWidth:25.0];
        [path setLineCapStyle:kCGLineCapRound];
        CGPoint a1 = CGPointMake(357.0f, 200.0f);
        CGPoint a2 = CGPointMake(338.0f, 489.0f);
        CGPoint a3 = CGPointMake(298.0f, 593.0f);
        lettersPoints[0] = a1;
        lettersPoints[1] = a2;
        lettersPoints[2] = a3;
        tolerance = 20.0f;
        for (int i=0; i < 3; i++) {
            NSLog(@"The lettersPoints are [%f-%f]", lettersPoints[i].x, lettersPoints[i].y);
        }
        isLineCorrect = NO;
        
        
    }
    return self;
}
- (void)drawRect:(CGRect)rect
{
    
    [incrementalImage drawInRect:rect]; // (3)
    if (isLineCorrect) {
        //NSLog(@"Green");
        [[UIColor greenColor] setStroke];
    }else{
        //NSLog(@"Red");
        [[UIColor redColor] setStroke];
    }
    [[UIColor redColor] setStroke];
    [path stroke];
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint p = [touch locationInView:self];
    if ((p.x > (lettersPoints[0].x-tolerance)) &&
        (p.x < (lettersPoints[0].x+tolerance)) &&
        (p.y > (lettersPoints[0].y-tolerance)) &&
        (p.y < (lettersPoints[0].y+tolerance)))
    {
        NSLog(@"Near Point");
        isLineCorrect = YES;
    }else{
        isLineCorrect = NO;
    }
    
    [path moveToPoint:p];
    self.cordenates.text = [[NSString alloc] initWithFormat:@"[%f-%f]",p.x,p.y];
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint p = [touch locationInView:self];
    if ((p.x > (lettersPoints[0].x-tolerance)) &&
        (p.x < (lettersPoints[0].x+tolerance)) &&
        (p.y > (lettersPoints[0].y-tolerance)) &&
        (p.y < (lettersPoints[0].y+tolerance)))
    {
        NSLog(@"Near Point");
        isLineCorrect = YES;
    }else{
        isLineCorrect = NO;
    }
    [path addLineToPoint:p];
    [self setNeedsDisplay];
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event // (2)
{
    UITouch *touch = [touches anyObject];
    CGPoint p = [touch locationInView:self];
    [path addLineToPoint:p];
    [self drawBitmap]; // (3)
    [self setNeedsDisplay];
    [path removeAllPoints]; //(4)
}
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self touchesEnded:touches withEvent:event];
}
- (void)drawBitmap // (3)
{
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, YES, 0.0);
    if (isLineCorrect) {
        NSLog(@"Green");
        [[UIColor greenColor] setStroke];
    }else{
        NSLog(@"Red");
        [[UIColor redColor] setStroke];
    }
    if (!incrementalImage) // first draw; paint background white by ...
    {
        UIBezierPath *rectpath = [UIBezierPath bezierPathWithRect:self.bounds]; // enclosing bitmap by a rectangle defined by another UIBezierPath object
        [[UIColor whiteColor] setFill];
        [rectpath fill]; // filling it with white
    }
    [incrementalImage drawAtPoint:CGPointZero];
    [path stroke];
    incrementalImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
}
- (IBAction)erasePathAction:(id)sender {
    incrementalImage = nil;
    [self setNeedsDisplay];
    
}
@end
 
 */
