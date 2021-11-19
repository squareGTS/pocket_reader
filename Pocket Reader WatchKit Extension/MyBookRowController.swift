//
//  MyBookRowController.swift
//  Pocket Reader WatchKit Extension
//
//  Created by Maxim Bekmetov on 19.11.2021.
//  Copyright © 2021 Maxim Bekmetov. All rights reserved.
//

import WatchKit

class MyBookRowController: NSObject {
    
    var book: BookItem! {
        didSet {
            nameLabel.setText(book.name)
        }
    }
    
    @IBOutlet weak var nameLabel: WKInterfaceLabel!
}
