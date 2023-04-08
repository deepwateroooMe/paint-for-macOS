//
//  Cercle.swift
//  TP4
//
//  Created by sofiane ouafir on 11/11/16.
//  Copyright © 2016 sofiane ouafir. All rights reserved.
//

import Foundation
import Cocoa

class Cercle : Figure
{
    //var monCercle : NSBezierPath
    var rayon : CGFloat
    init(centre : CGPoint, rayon: CGFloat)
    {
        self.rayon = rayon
        super.init()
        self.position = centre
        
    }
    
    override func dessine() {
        couleurTrait.setStroke()
        couleurRemplissage.setFill()
        let monCercle = NSBezierPath()
        monCercle.appendArc(withCenter: self.position, radius: self.rayon, startAngle: 0, endAngle: 360)
        monCercle.lineWidth = epaisseurTrait
        monCercle.stroke()
        if(self.estRempli)
        {
            monCercle.fill()
        }
    }
    
    override func contient(point: CGPoint) -> Bool {
        let monCercle = NSBezierPath()
        monCercle.appendArc(withCenter: self.position, radius: self.rayon, startAngle: 0, endAngle: 360)
        return monCercle.contains(point)
    }
    
    override func description()-> String
    {
        return "Cercle"
    }
    
}
