//
//  Carre.swift
//  TP4
//
//  Created by sofiane ouafir on 11/11/16.
//  Copyright © 2016 sofiane ouafir. All rights reserved.
//

import Foundation
import Cocoa
class Carre : Figure
{
    var width : CGFloat
    
    init(width : CGFloat, position : CGPoint) {
        
        self.width = width
        super.init()
        self.position = position
    }
    
    override func dessine() {
        couleurTrait.setStroke()
        couleurRemplissage.setFill()
        let monCarre = NSBezierPath()
        monCarre.appendBezierPathWithRect(NSRect(x: position.x, y: position.y, width: width, height: width))
        monCarre.lineWidth = epaisseurTrait
        monCarre.stroke()
        if(estRempli)
        {
            monCarre.fill()
        }
    }
    
    override func contient(point: CGPoint) -> Bool {
        let monCarre = NSBezierPath()
        monCarre.appendBezierPathWithRect(NSRect(x: position.x, y: position.y, width: width, height: width))
        return monCarre.containsPoint(point)
    }
    
    override func description()-> String
    {
        return "Carre"
    }
    
}