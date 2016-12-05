//
//  AppDelegate.swift
//  TP4
//
//  Created by sofiane ouafir on 07/11/16.
//  Copyright © 2016 sofiane ouafir. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    @IBOutlet weak var imageView: ImageView!
    
    @IBAction func undoButton(sender: NSMenuItem) {
        imageView.enleverDernierFigure()
        imageView.setNeedsDisplay()
        
    }
    @IBAction func newButton(sender: NSMenuItem) {
        imageView.viderFigure()
        imageView.setNeedsDisplay()
    }
    
    
    
    @IBOutlet weak var window: NSWindow!

    

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

