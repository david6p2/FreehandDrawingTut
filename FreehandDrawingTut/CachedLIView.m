//
//  CachedLIView.m
//  FreehandDrawingTut
//
//  Created by David Cespedes on 30/11/12.
//  Copyright (c) 2012 LSR Marketing Service. All rights reserved.
//

#import "CachedLIView.h"
@implementation CachedLIView
{
    UIBezierPath *path;
    UIImage *incrementalImage; // (1)
    
    NSMutableArray * lettersPoints;
    
    int index;
    
    BOOL isLineCorrect;
    float tolerance;
}
- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder])
    {
        [self setMultipleTouchEnabled:NO];
        [self setBackgroundColor:[UIColor clearColor]];
        [self setOpaque:NO];
        path = [UIBezierPath bezierPath];
        [path setLineWidth:25.0];
        [path setLineCapStyle:kCGLineCapRound];
        lettersPoints = [self setArrayOfPoints];
        tolerance = 20.0f;
        index = 0;
        for (int i=0; i < lettersPoints.count; i++) {
            NSLog(@"The lettersPoints are [%f-%f]", [[lettersPoints objectAtIndex:i] CGPointValue].x, [[lettersPoints objectAtIndex:i] CGPointValue].y);
        }
        isLineCorrect = NO;
        
        
    }
    return self;
}

- (NSMutableArray *)setArrayOfPoints{
    NSMutableArray * arrayWithPoints = [[NSMutableArray alloc] init];
    CGPoint arrayOfPoints[34];
    arrayOfPoints[0] = CGPointMake(385.000000f, 404.000000f);
    arrayOfPoints[1] = CGPointMake(370.000000f, 429.000000f);
    arrayOfPoints[2] = CGPointMake(359.000000f, 453.000000f);
    arrayOfPoints[3] = CGPointMake(352.000000f, 473.000000f);
    arrayOfPoints[4] = CGPointMake(345.000000f, 494.000000f);
    arrayOfPoints[5] = CGPointMake(338.000000f, 517.000000f);
    arrayOfPoints[6] = CGPointMake(329.000000f, 538.000000f);
    arrayOfPoints[7] = CGPointMake(321.000000f, 558.000000f);
    arrayOfPoints[8] = CGPointMake(313.000000f, 578.000000f);
    arrayOfPoints[9] = CGPointMake(304.000000f, 596.000000f);
    
    arrayOfPoints[10] = CGPointMake(385.000000f, 404.000000f);
    arrayOfPoints[11] = CGPointMake(395.000000f, 419.000000f);
    arrayOfPoints[12] = CGPointMake(401.000000f, 434.000000f);
    arrayOfPoints[13] = CGPointMake(406.000000f, 448.000000f);
    arrayOfPoints[14] = CGPointMake(411.000000f, 462.000000f);
    arrayOfPoints[15] = CGPointMake(416.000000f, 476.000000f);
    arrayOfPoints[16] = CGPointMake(421.000000f, 489.000000f);
    arrayOfPoints[17] = CGPointMake(427.000000f, 503.000000f);
    arrayOfPoints[18] = CGPointMake(431.000000f, 517.000000f);
    arrayOfPoints[19] = CGPointMake(436.000000f, 531.000000f);
    arrayOfPoints[20] = CGPointMake(443.000000f, 545.000000f);
    arrayOfPoints[21] = CGPointMake(448.000000f, 560.000000f);
    arrayOfPoints[22] = CGPointMake(454.000000f, 576.000000f);
    arrayOfPoints[23] = CGPointMake(459.000000f, 592.000000f);
    arrayOfPoints[24] = CGPointMake(464.000000f, 605.000000f);
    
    arrayOfPoints[25] = CGPointMake(331.000000f, 530.000000f);
    arrayOfPoints[26] = CGPointMake(344.000000f, 530.000000f);
    arrayOfPoints[27] = CGPointMake(357.000000f, 530.000000f);
    arrayOfPoints[28] = CGPointMake(371.000000f, 530.000000f);
    arrayOfPoints[29] = CGPointMake(385.000000f, 530.000000f);
    arrayOfPoints[30] = CGPointMake(399.000000f, 530.000000f);
    arrayOfPoints[31] = CGPointMake(413.000000f, 530.000000f);
    arrayOfPoints[32] = CGPointMake(430.000000f, 530.000000f);
    arrayOfPoints[33] = CGPointMake(444.000000f, 530.000000f);
    
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[0]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[1]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[2]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[3]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[4]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[5]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[6]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[7]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[8]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[9]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[10]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[11]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[12]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[13]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[14]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[15]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[16]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[17]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[18]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[19]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[20]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[21]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[22]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[23]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[24]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[25]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[26]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[27]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[28]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[29]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[30]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[31]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[32]]];
    [arrayWithPoints addObject:[NSValue valueWithCGPoint:arrayOfPoints[33]]];
    
    return arrayWithPoints;
}
- (void)drawRect:(CGRect)rect
{
    
    [incrementalImage drawInRect:rect]; // (3)
    if (isLineCorrect) {
        //NSLog(@"Green");
        [[UIColor greenColor] setStroke];
        if (index >= lettersPoints.count-1) {
            index = 0;
            self.eraseButton.titleLabel.textColor = [UIColor greenColor];
        }
    }else{
        //NSLog(@"Red");
        [[UIColor redColor] setStroke];
    }
    [path stroke];
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint p = [touch locationInView:self];
    
    if ([self isTouch:p insideTolerance:tolerance ofPoint:[[lettersPoints objectAtIndex:index] CGPointValue]])
    {
        NSLog(@"Near Point");
        isLineCorrect = YES;
        float distanceToCurrentPoint = [self distanceFromPoint:p toPoint:[[lettersPoints objectAtIndex:index] CGPointValue]];
        float distanceToNextPoint = [self distanceFromPoint:p toPoint:[[lettersPoints objectAtIndex:index+1] CGPointValue]];
        if (distanceToNextPoint<distanceToCurrentPoint) {
            index ++;
            NSLog(@"Now the index is %d",index);
        }
        
    }if ([self isTouch:p insideTolerance:tolerance ofPoint:[[lettersPoints objectAtIndex:index+1] CGPointValue]])
    {
        //NSLog(@"Near Point");
        isLineCorrect = YES;
        //float distanceToCurrentPoint = [self distanceFromPoint:p toPoint:[[lettersPoints objectAtIndex:index] CGPointValue]];
        //float distanceToNextPoint = [self distanceFromPoint:p toPoint:[[lettersPoints objectAtIndex:index+1] CGPointValue]];
        //if (distanceToNextPoint<distanceToCurrentPoint) {
            index ++;
            NSLog(@"Now the index is %d",index);
        //}
        
    }else{
        isLineCorrect = NO;
    }
    
    [path moveToPoint:p];
    self.cordenates.text = [[NSString alloc] initWithFormat:@"[%f-%f]",p.x,p.y];
   NSLog(@"CGPointMake(%ff, %ff);",p.x,p.y);
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint p = [touch locationInView:self];
    if ([self isTouch:p insideTolerance:tolerance ofPoint:[[lettersPoints objectAtIndex:index] CGPointValue]])
    {
        NSLog(@"Near Point");
        isLineCorrect = YES;
        float distanceToCurrentPoint = [self distanceFromPoint:p toPoint:[[lettersPoints objectAtIndex:index] CGPointValue]];
        float distanceToNextPoint = [self distanceFromPoint:p toPoint:[[lettersPoints objectAtIndex:index+1] CGPointValue]];
        if (distanceToNextPoint<distanceToCurrentPoint) {
            index ++;
            NSLog(@"Now the index is %d",index);
            
        }
    }else{
        isLineCorrect = NO;
    }
    [path addLineToPoint:p];
    [self drawBitmap];
    [self setNeedsDisplay];
    [path removeAllPoints];
    [path moveToPoint:p];
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

- (BOOL)isTouch:(CGPoint)touch insideTolerance:(float)theTolerance ofPoint:(CGPoint)testPoint{
    BOOL isCorrect = NO;
    //float xDiference = touch.x-testPoint.x;
    //float yDiference = touch.y-testPoint.y;
    //float pointDistance = sqrtf(powf(xDiference, 2)+powf(yDiference, 2));
    float pointDistance = [self distanceFromPoint:touch toPoint:testPoint];
    if (pointDistance<=tolerance) {
        isCorrect = YES;
    }
    return isCorrect;
}

- (float) distanceFromPoint:(CGPoint)firstPoint toPoint:(CGPoint)secondPoint{
    
    float xDiference = firstPoint.x-secondPoint.x;
    float yDiference = firstPoint.y-secondPoint.y;
    float pointDistance = sqrtf(powf(xDiference, 2)+powf(yDiference, 2));
    return pointDistance;
}


- (void)drawBitmap // (3)
{
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, 0.0);
    if (isLineCorrect) {
        NSLog(@"Green");
        [[UIColor greenColor] setStroke];
    }else{
        //NSLog(@"Red in drawBitmap");
        [[UIColor redColor] setStroke];
    }
    
    if (!incrementalImage) // first draw; paint background white by ...
    {
        UIBezierPath *rectpath = [UIBezierPath bezierPathWithRect:self.bounds]; // enclosing bitmap by a rectangle defined by another UIBezierPath object
        [[UIColor clearColor] setFill];
        [rectpath fill]; // filling it with white
    }
    
    
    [incrementalImage drawAtPoint:CGPointZero];
    [path stroke];
    incrementalImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
}
- (IBAction)erasePathAction:(id)sender {
    incrementalImage = nil;
    index=0;
    [self setNeedsDisplay];
    
}
@end
