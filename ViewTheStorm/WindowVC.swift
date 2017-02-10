//
//  WindowVC.swift
//  ViewTheStorm
//
//  Created by Dan Lindsay on 2017-02-10.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import Cocoa

class WindowVC: NSWindowController {
    
    @IBOutlet var shareButton: NSButton!
    

    override func windowDidLoad() {
        super.windowDidLoad()
    
        shareButton.sendAction(on: .leftMouseDown)
    }
    
    @IBAction func shareClicked(_ sender: NSView) {
        
        guard let split = contentViewController as? NSSplitViewController else { return }
        guard let detail = split.childViewControllers[1] as? DetailVC else { return }
        guard let image = detail.imageView.image else { return }
        
        let picker = NSSharingServicePicker(items: [image])
        
        picker.show(relativeTo: .zero, of: sender, preferredEdge: .minY)
    }
    
    

}
