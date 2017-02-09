//
//  DetailVC.swift
//  ViewTheStorm
//
//  Created by Dan Lindsay on 2017-02-09.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import Cocoa

class DetailVC: NSViewController {
    
    
    @IBOutlet var imageView: NSImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    func imageSelected(name: String) {
        imageView.image = NSImage(named: name)
    }
    
}
