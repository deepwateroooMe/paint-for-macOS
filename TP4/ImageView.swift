//
//  ImageView.swift
//  TP4
//
//  Created by sofiane ouafir on 07/11/16.
//  Copyright © 2016 sofiane ouafir. All rights reserved.
//

import Cocoa
import Darwin
class ImageView: NSImageView {
    
    var figures = [Figure]()
    var isCercle = false
    var isCarre = false
    var isTriangle = false
    var couleurTrait = NSColor()
    var couleurRemplissage = NSColor()
    var estRempli = Bool()
    var index = -1 // valeur de la figure selectionner ou créer (-1 si null)
    var isDeplacement = false
    var isCouleur = false
    var isDessin = false
    var traitEpaisseur  = CGFloat()


    override func mouseDragged(theEvent: NSEvent) {
        let point = self.convertPoint(theEvent.locationInWindow, fromView: nil)
        // remplacer tte les variables par celle ci
        if(isCercle)
        {
            if(index != -1)
            {
                var nouveauRayon : CGFloat
                let fig = figures[index] as! Cercle
                nouveauRayon = sqrt((fig.position.x - point.x) * (fig.position.x - point.x) + (fig.position.y - point.y) * (fig.position.y - point.y))
                    fig.rayon = nouveauRayon
                setNeedsDisplay()
            }
        }
        if(isCarre)
        {
            if(index != -1)
            {
                var nouvelleLargeur :CGFloat
                let fig = figures[index] as! Carre
                nouvelleLargeur = point.x - fig.position.x
                fig.width = nouvelleLargeur
                setNeedsDisplay()
            }
        }
        if(isTriangle)
        {
            if(index != -1)
            {
                var nouvelleLargeur :CGFloat
                let fig = figures[index] as! Triangle
                nouvelleLargeur = point.x - fig.position.x
                fig.width = nouvelleLargeur
                setNeedsDisplay()
            }
        }
        if(isDeplacement)
        {
            if(index != -1)
            {
                figures[index].position = point
                setNeedsDisplay()
            }
        }
        if(isDessin)
        {
            let cercle = Cercle.init(centre: point , rayon: traitEpaisseur)
            cercle.estRempli = true
            cercle.couleurTrait = couleurTrait
            cercle.couleurRemplissage = couleurTrait
            cercle.epaisseurTrait = traitEpaisseur
            figures.append(cercle)

            setNeedsDisplay()
        }
    }
    
    override func mouseUp(theEvent: NSEvent) {
        if(isCercle)
        {
            setNeedsDisplay()
        }
        else if(isCarre)
        {
            
            setNeedsDisplay()
        }
        else if(isDeplacement)
        {
            index = -1
        }
    }
    
    override func mouseDown(theEvent: NSEvent) {
        let point = self.convertPoint(theEvent.locationInWindow, fromView: nil)
        if(isCercle)
        {
            let cercle = Cercle.init(centre: point , rayon: 0)
            cercle.estRempli = estRempli
            cercle.couleurTrait = couleurTrait
            cercle.couleurRemplissage = couleurRemplissage
            cercle.epaisseurTrait = traitEpaisseur
            figures.append(cercle)
            index = figures.count - 1
            
            
        }
        else if(isCarre)
        {
            let carre = Carre.init(width: 0, position : point)
            carre.estRempli = estRempli
            carre.couleurTrait = couleurTrait
            carre.couleurRemplissage = couleurRemplissage
            carre.epaisseurTrait = traitEpaisseur
            figures.append(carre)
            index = figures.count - 1
        }
        else if(isTriangle)
        {
            let triangle = Triangle.init(position: point, width: 0)
            triangle.estRempli = estRempli
            triangle.couleurTrait = couleurTrait
            triangle.couleurRemplissage = couleurRemplissage
            triangle.epaisseurTrait = traitEpaisseur
            figures.append(triangle)
            index = figures.count - 1
        }
        else if(isDeplacement)
        {
            var i = -1
            index = -1
            for figure in figures
            {
                i = i + 1
                if(figure.contient(point))
                {
                    index = i
                }
            }
        }
        else if(isCouleur)
        {
            var figure = Figure()
            var findFigure = false
            for f in figures
            {
                if(f.contient(point))
                {
                    figure = f
                    findFigure = true
                }
            }
            if(findFigure)
            {
                figure.couleurTrait = couleurTrait
                figure.couleurRemplissage = couleurRemplissage
                figure.estRempli = estRempli
                setNeedsDisplay()
            }
        }
       
        
    }
    
    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)
        
        for figure in figures
        {
            figure.dessine()
        }

    }
    
    func viderFigure()
    {
        figures.removeAll()
    }
    
    func enleverDernierFigure()
    {
        if(figures.count != 0)
        {
            figures.removeLast()
        }
    }
    
}
