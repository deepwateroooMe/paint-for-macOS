//
//  Figure.swift
//  TP4
//
//  Created by sofiane ouafir on 11/11/16.
//  Copyright © 2016 sofiane ouafir. All rights reserved.
//

import Foundation
import Cocoa

protocol estDessinable{
    func dessine()
    func contient(point:CGPoint) -> Bool
}

class Figure : estDessinable
{
    var position: CGPoint = CGPoint()
    var epaisseurTrait = CGFloat()
    var couleurTrait = NSColor.init(red: 0, green: 0, blue: 0, alpha: 1)
    var estRempli = false
    var couleurRemplissage = NSColor.init(red: 255, green: 255, blue: 255, alpha: 1)
    
    func dessine() {
    }
    
    func contient(point: CGPoint) -> Bool {
        return true
    }
    
    func description()-> String
    {
        return ""
    }
    
}

