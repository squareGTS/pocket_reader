//
//  BookDetailController.swift
//  Pocket Reader WatchKit Extension
//
//  Created by Maxim Bekmetov on 19.11.2021.
//  Copyright © 2021 Maxim Bekmetov. All rights reserved.
//

import WatchKit
import Foundation


class BookDetailController: WKInterfaceController {
    
    @IBOutlet weak var descriptionLabel: WKInterfaceLabel!
    var book: BookItem!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let book = context as? BookItem {
            self.book = book
            descriptionLabel.setText(book.bookDescription)
        }
    }
    
    override func willActivate() {
        super.willActivate()
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }
    
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        return book.bookDescription
    }
}
