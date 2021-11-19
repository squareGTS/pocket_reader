//
//  DescriptionInterfaceController.swift
//  Pocket Reader WatchKit Extension
//
//  Created by Maxim Bekmetov on 19.11.2021.
//  Copyright © 2021 Maxim Bekmetov. All rights reserved.
//

import WatchKit
import Foundation

class DescriptionInterfaceController: WKInterfaceController {
    
    @IBOutlet weak var descriptionLabel: WKInterfaceLabel!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let description = context as? String {
            descriptionLabel.setText(description)
        }
    }
}
