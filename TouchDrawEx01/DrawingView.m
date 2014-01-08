//
//  DrawingView.m
//  TouchDrawEx01
//
//  Created by yg on 14. 1. 9..
//  Copyright (c) 2014년 yg. All rights reserved.
//

#import "DrawingView.h"

@interface DrawingView() {
	UIBezierPath *myPath;
}

@end


@implementation DrawingView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
		myPath = [[UIBezierPath alloc] init];
		myPath.lineWidth = 10;
		[[UIColor blackColor] setStroke];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
	[myPath stroke];
}

#pragma mark - Touch Methods
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	UITouch *mytouch = [[touches allObjects] objectAtIndex:0];
	CGPoint point = [mytouch locationInView:self];
	[myPath moveToPoint:point];
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
	UITouch *mytouch = [[touches allObjects] objectAtIndex:0];
	CGPoint point = [mytouch locationInView:self];
	[myPath addLineToPoint:point];
	[self setNeedsDisplay];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	
}



@end
