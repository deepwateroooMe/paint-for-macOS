//
//  ImageViewController.swift
//  TP4
//
//  Created by sofiane ouafir on 07/11/16.
//  Copyright © 2016 sofiane ouafir. All rights reserved.
//
import Foundation
import Cocoa

class ImageViewController: NSViewController {
    
    @IBOutlet weak var vueImage: ImageView!
    @IBOutlet weak var panelOutils: NSView!
    @IBOutlet weak var couleurTrait: NSColorWell!
    @IBOutlet weak var couleurRemplissage: NSColorWell!
    @IBOutlet weak var boutonEstRempli: NSButton!
    @IBOutlet weak var boutonDeplacer: NSButton!
    @IBOutlet weak var boutonCercle: NSButton!
    @IBOutlet weak var boutonCarre: NSButton!
    @IBOutlet weak var boutonTriangle: NSButton!
    @IBOutlet weak var boutonCouleur: NSButton!
    @IBOutlet weak var boutonEpaisseur: NSSlider!
    @IBOutlet weak var boutonDessin: NSButton!

    @IBOutlet weak var enregistrer: NSMenuItem!
    
    var isEnregistrer = false
    
    var traitEpaisseur : CGFloat = 1
    
    @IBAction func boutonCouleur(sender: NSButton) {
        boutonTriangle.state = NSControl.StateValue.off
        boutonCarre.state = NSControl.StateValue.off
        boutonCercle.state = NSControl.StateValue.off
        boutonDeplacer.state = NSControl.StateValue.off
        boutonDessin.state = NSControl.StateValue.off
        vueImage.isCercle = false
        vueImage.isCarre = false
        vueImage.isTriangle = false
        vueImage.isDeplacement = false
        vueImage.isDessin = false
        couleurRemplissage.isHidden = false
        if(boutonCouleur.state == NSControl.StateValue.off)
        {
            vueImage.isCouleur = false
        }
        else
        {
            vueImage.isCouleur = true
        }
        vueImage.couleurTrait = couleurTrait.color
        vueImage.couleurRemplissage = couleurRemplissage.color
        
        
    }
    
    @IBAction func boutonDeplacer(sender: NSButton) {
        boutonTriangle.state = NSControl.StateValue.off
        boutonCarre.state = NSControl.StateValue.off
        boutonCercle.state = NSControl.StateValue.off
        boutonCouleur.state = NSControl.StateValue.off
        boutonDessin.state = NSControl.StateValue.off
        vueImage.isCercle = false
        vueImage.isCarre = false
        vueImage.isTriangle = false
        vueImage.isCouleur = false
        vueImage.isDessin = false
        couleurRemplissage.isHidden = false
        if(boutonDeplacer.state == NSControl.StateValue.off)
        {
           vueImage.isDeplacement = false
        }
        else
        {
            vueImage.isDeplacement = true
        }
        vueImage.couleurTrait = couleurTrait.color
        vueImage.couleurRemplissage = couleurRemplissage.color

    }
    
    @IBAction func boutonCercle(sender: NSButton) {
        boutonDeplacer.state = NSControl.StateValue.off
        boutonTriangle.state = NSControl.StateValue.off
        boutonCarre.state = NSControl.StateValue.off
        boutonCouleur.state = NSControl.StateValue.off
        boutonDessin.state = NSControl.StateValue.off
        if(boutonCercle.state == NSControl.StateValue.off)
        {
            vueImage.isCercle = false
        }
        else
        {
            vueImage.isCercle = true
        }
        vueImage.isCarre = false
        vueImage.isTriangle = false
        vueImage.isDeplacement = false
        vueImage.isCouleur = false
        vueImage.isDessin = false
        couleurRemplissage.isHidden = false
        vueImage.couleurTrait = couleurTrait.color
        vueImage.couleurRemplissage = couleurRemplissage.color
        vueImage.traitEpaisseur = CGFloat (boutonEpaisseur.intValue)
    }
    
    @IBAction func boutonCarre(sender: NSButton) {
        boutonDeplacer.state = NSControl.StateValue.off
        boutonTriangle.state = NSControl.StateValue.off
        boutonCercle.state = NSControl.StateValue.off
        boutonCouleur.state = NSControl.StateValue.off
        boutonDessin.state = NSControl.StateValue.off
        vueImage.isCercle = false
        if(boutonCarre.state == NSControl.StateValue.off)
        {
            vueImage.isCarre = false
        }
        else
        {
            vueImage.isCarre = true
        }
        vueImage.isTriangle = false
        vueImage.isDeplacement = false
        vueImage.isCouleur = false
        vueImage.isDessin = false
        couleurRemplissage.isHidden = false
        vueImage.couleurTrait = couleurTrait.color
        vueImage.couleurRemplissage = couleurRemplissage.color
        vueImage.traitEpaisseur = CGFloat (boutonEpaisseur.intValue)
    }
    
    @IBAction func boutonTriangle(sender: NSButton) {
        boutonDeplacer.state = NSControl.StateValue.off
        boutonCarre.state = NSControl.StateValue.off
        boutonCercle.state = NSControl.StateValue.off
        boutonCouleur.state = NSControl.StateValue.off
        boutonDessin.state = NSControl.StateValue.off
        vueImage.isCercle = false
        vueImage.isCarre = false
        vueImage.isCouleur = false
        vueImage.isDessin = false
        couleurRemplissage.isHidden = false
        if(boutonTriangle.state == NSControl.StateValue.off)
        {
            vueImage.isTriangle = false
        }
        else
        {
            vueImage.isTriangle = true
        }
        vueImage.isDeplacement = false
        vueImage.couleurTrait = couleurTrait.color
        vueImage.couleurRemplissage = couleurRemplissage.color
        vueImage.traitEpaisseur = CGFloat (boutonEpaisseur.intValue)
    }
    
    
    @IBAction func boutonDessin(sender: NSButton) {
        boutonDeplacer.state = NSControl.StateValue.off
        boutonCarre.state = NSControl.StateValue.off
        boutonCercle.state = NSControl.StateValue.off
        boutonCouleur.state = NSControl.StateValue.off
        boutonTriangle.state = NSControl.StateValue.off
        vueImage.isCercle = false
        vueImage.isCarre = false
        vueImage.isCouleur = false
        vueImage.isTriangle = false
        
        if(boutonDessin.state == NSControl.StateValue.off)
        {
            couleurRemplissage.isHidden = false
            vueImage.isDessin = false
        }
        else
        {
            couleurRemplissage.isHidden = true
            vueImage.isDessin = true
        }
        vueImage.isDeplacement = false
        vueImage.couleurTrait = couleurTrait.color
        vueImage.couleurRemplissage = couleurRemplissage.color
        vueImage.traitEpaisseur = CGFloat (boutonEpaisseur.intValue)

    }
    
    
    @IBAction func boutonEstRempli(sender: NSButton) {
        if(sender.state == NSControl.StateValue.on)
        {
            vueImage.estRempli = true
        }
        else
        {
            vueImage.estRempli = false
        }
    }
    
    @IBAction func boutonCouleurTrait(sender: NSColorWell) {
    }
    
    
    @IBAction func boutonCouleurRemplissage(sender: NSColorWell) {
    }
    
    
    @IBAction func actionEpaisseur(sender: NSSlider) {
        vueImage.traitEpaisseur = CGFloat(sender.intValue)
    }
    
    
    var imageUrl : NSURL?
    {
        didSet{
             if imageUrl != nil
             {
                let monImage = NSImage(contentsOf: imageUrl! as URL)!
                vueImage.image = monImage
                vueImage.setFrameSize(monImage.size)
            }
        }
    }

    @IBAction func ouvrirFichier(sender: NSMenuItem) {
        let openPanel = NSOpenPanel()
        openPanel.allowsMultipleSelection = false
        openPanel.canChooseFiles = true
        openPanel.canChooseDirectories = false
        openPanel.title = "Choisir une image"
        openPanel.runModal()
        imageUrl = openPanel.url as NSURL?
        vueImage.viderFigure()
        //enregistrer.enabled = true
        
//        let file = "TP4/TP4/sauvegarde/" + imageUrl!.path!.stringByReplacingOccurrencesOfString("/", withString: "-").stringByReplacingOccurrencesOfString("jpg", withString: "txt")
//    
//        
//        
//        if let dir = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true).first {
//            let path = NSURL(fileURLWithPath: dir).URLByAppendingPathComponent(file)
//        
//        //reading
//        do {
//            let text2 = try NSString(contentsOfURL: path, encoding: NSUTF8StringEncoding)
//            var array = text2.componentsSeparatedByString("fin \n")
//            var i = 0
//            var blue : CGFloat = 255
//            var red : CGFloat = 255
//            var green : CGFloat = 255
//            for element in array
//            {
//                let arrayFigure = element.componentsSeparatedByString("\n")
//                if(arrayFigure[0].stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()) == "Carre")
//                {
//                    NSLog("%@", arrayFigure[0])
//                    i = 0
//                    let carre = Carre.init(width: 0, position: CGPoint.init(x: 0, y: 0))
//                    
//                    while i < arrayFigure.count {
//                        
//                        if i == 1 {
//                            carre.width = CGFloat(Float(arrayFigure[i])!)
//                        }
//                        if i == 2{
//                            carre.position.x = CGFloat(Float(arrayFigure[i])!)
//                        }
//                        if i == 3{
//                            carre.position.y = CGFloat(Float(arrayFigure[i])!)
//                        }
//                        if i == 4{
//                            carre.epaisseurTrait = CGFloat(Float(arrayFigure[i])!)
//                        }
//                        if i == 5{
//                            red = CGFloat(Float(arrayFigure[i])!)
//                        }
//                        if i == 6{
//                            blue = CGFloat(Float(arrayFigure[i])!)
//                        }
//                        if i == 7{
//                            green = CGFloat(Float(arrayFigure[i])!)
//                            carre.couleurTrait = NSColor.init(red: red, green: green, blue: blue, alpha: 1)
//                        }
//                        if i == 8{
//                            if arrayFigure[i] == "1 " {
//                                 carre.estRempli = true
//                            }
//                            else {
//                                carre.estRempli = false
//                           }
//                        }
//                        if i == 9 {
//                            red = CGFloat(Float(arrayFigure[i])!)
//                        }
//                        if i == 10{
//                            blue = CGFloat(Float(arrayFigure[i])!)
//                        }
//                        if i == 11{
//                            green = CGFloat(Float(arrayFigure[i])!)
//                            carre.couleurRemplissage = NSColor.init(red: red, green: green, blue: blue, alpha: 1)
//                        }
//                        i = i + 1
//                    }
//                    vueImage.figures.append(carre)
//                }
//
//            }
//        }
//        
//        catch {/* error handling here */}
//        }

        vueImage.setNeedsDisplay()
    }
    
    
    
    @IBAction func enregistrer(sender: NSMenuItem) {
        let data : NSData = vueImage.dataWithPDF(inside: NSRect.init(origin: CGPoint.init(x: 0, y: 0) , size: vueImage.image!.size)) as NSData as NSData
        data.write(toFile: imageUrl!.path!.replacingOccurrences(of: ".jpg", with: "").replacingOccurrences(of: ".png", with: ""), atomically: true)
    }
    
    
   @IBAction func enregistrerSous(sender: NSMenuItem) {
        let savePanel = NSSavePanel()
       if(savePanel.runModal().rawValue == NSFileHandlingPanelOKButton as NSInteger)
        {
            let saveUrl = savePanel.url
            
            let data : NSData = vueImage.dataWithPDF(inside: NSRect.init(origin: CGPoint.init(x: 0, y: 0) , size: vueImage.image!.size)) as NSData
            data.write(toFile: saveUrl!.path.replacingOccurrences(of: ".jpg", with: "").replacingOccurrences(of: ".png", with: ""), atomically: true)
           
//
//        let file = "TP4/TP4/sauvegarde/" + saveUrl!.path!.replacingOccurences("/", withString: "-").replacingOccurences("jpg", withString: "txt")
//    
//    
//        if let dir = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true).first {
//            let path = NSURL(fileURLWithPath: dir).URLByAppendingPathComponent(file)
//            
//            var text = ""
//            for figure in vueImage.figures
//            {
//                if(figure.description() == "Carre")
//                {
//                    let fig = figure as! Carre
//                    text += fig.description() + "\n"
//                    text += String(fig.width) + "\n"
//                    text += String(fig.position.x) + "\n"
//                    text += String(fig.position.y) + "\n"
//                    text += String(fig.epaisseurTrait) + "\n"
//                    text += String(fig.couleurTrait.redComponent) + "\n" + String(fig.couleurTrait.blueComponent) + "\n" + String(fig.couleurTrait.greenComponent) + "\n"
//                    
//                    if(fig.estRempli)
//                    {
//                        text += "1 \n"
//                    }
//                    else
//                    {
//                        text += "0 \n"
//                    }
//                    text += String(fig.couleurRemplissage.redComponent) + "\n" + String(fig.couleurRemplissage.blueComponent) + "\n" + String(fig.couleurRemplissage.greenComponent) + "\n"
//                    text += "fin \n"
//                }
//            }
//            
//            do {
//                try text.writeToURL(path, atomically: false, encoding: NSUTF8StringEncoding)
//            }
//            catch {/* error handling here */}
//
//    
//        }
        
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        if let monImage = NSImage(contentsOfFile: "feuille.jpg"){
            imageUrl = NSURL(fileURLWithPath: "feuille.jpg")
            
        }else
        {
            print("Image non trouvée")
        }
        
        couleurTrait.addObserver(self, forKeyPath: "color", options: .new, context: nil)
        couleurRemplissage.addObserver(self, forKeyPath: "color", options: .new, context: nil)
        boutonEstRempli.state = NSControl.StateValue.off
    }
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        vueImage.couleurTrait = couleurTrait.color
        vueImage.couleurRemplissage = couleurRemplissage.color
    }
    
    deinit
    {
        removeObserver(self, forKeyPath: "color")
    }
}
