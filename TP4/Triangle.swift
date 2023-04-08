//
//  Triangle.swift
//  TP4
//
//  Created by sofiane ouafir on 13/11/16.
//  Copyright © 2016 sofiane ouafir. All rights reserved.
//

import Foundation
import Cocoa

class Triangle: Figure {
    var width: CGFloat
    
    init(position: CGPoint, width: CGFloat) {
        self.width = width
        super.init()
        self.position = position
    }
    
    override func dessine() {
        couleurTrait.setStroke()
        couleurRemplissage.setFill()
        let monTriangle = NSBezierPath()
        monTriangle.move(to: NSPoint(x: position.x, y: position.y))
        monTriangle.line(to: NSPoint(x: (position.x + width), y: position.y))
        monTriangle.line(to: NSPoint(x: (position.x + width/2), y: position.y + width))
        monTriangle.line(to: NSPoint(x: (position.x), y: position.y))
        monTriangle.lineWidth = epaisseurTrait
        monTriangle.stroke()
        if(estRempli)
        {
            monTriangle.fill()
        }
    }
    
    override func contient(point: CGPoint) -> Bool {
        let monTriangle = NSBezierPath()
        monTriangle.move(to: NSPoint(x: position.x, y: position.y))
        monTriangle.line(to: NSPoint(x: (position.x + width), y: position.y))
        monTriangle.line(to: NSPoint(x: (position.x + width/2), y: position.y + width))
        monTriangle.line(to: NSPoint(x: (position.x), y: position.y))
        return monTriangle.contains(point)
    }
    
    override func description()-> String
    {
        return "Triangle"
    }
    
}
