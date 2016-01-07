//
//  DrawView.swift
//  Definitely Not Paint
//
//  Created by Stephen Wong on 1/7/16.
//  Copyright © 2016 Intrepid Pursuits. All rights reserved.
//

import UIKit

class DrawView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    var lines = [Line]()
    var lastPoint: CGPoint!
    var rainbowColors = [UIColor.redColor(),
        UIColor.orangeColor(),
        UIColor.yellowColor(),
        UIColor.greenColor(),
        UIColor.blueColor(),
        UIColor.purpleColor()]
    var currentColorIndex = 0
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor.blackColor()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        lastPoint = touches.first?.locationInView(self)
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let newPoint = touches.first?.locationInView(self) {
            if (currentColorIndex > 5) {
                currentColorIndex = 0
            }
            lines.append(Line(start: lastPoint, end: newPoint, color: rainbowColors[currentColorIndex]))
            lastPoint = newPoint
            self.setNeedsDisplay()
            currentColorIndex++
        }
        
    }
    
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        CGContextBeginPath(context)
        CGContextSetLineWidth(context, 5)
        CGContextSetLineCap(context, CGLineCap.Round)
        
        for line in lines {
            CGContextMoveToPoint(context, line.start.x, line.start.y)
            CGContextAddLineToPoint(context, line.end.x, line.end.y)
            CGContextSetStrokeColorWithColor(context, line.color.CGColor)
            CGContextStrokePath(context)
        }
        
    }

}
