//
//  SourceVC.swift
//  ViewTheStorm
//
//  Created by Dan Lindsay on 2017-02-09.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import Cocoa

class SourceVC: NSViewController, NSTableViewDataSource, NSTableViewDelegate {
    
    
    @IBOutlet var tableView: NSTableView!
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
    }
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return pictures.count
    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        guard let vw = tableView.make(withIdentifier: tableColumn!.identifier, owner: self) as? NSTableCellView else {
            return nil
        }
        
        vw.textField?.stringValue = pictures[row]
        
        return vw
    }
    
}
