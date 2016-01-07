//
//  Line.swift
//  Definitely Not Paint
//
//  Created by Stephen Wong on 1/7/16.
//  Copyright © 2016 Intrepid Pursuits. All rights reserved.
//

import UIKit

class Line {
    var start: CGPoint
    var end: CGPoint
    var color: UIColor
    
    init(start _start: CGPoint, end _end: CGPoint, color _color: UIColor) {
        start = _start
        end = _end
        color = _color
    }
}
