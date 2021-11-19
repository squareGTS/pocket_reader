//
//  StackView + Extension.swift
//  Pocket Reader
//
//  Created by Maxim Bekmetov on 19.11.2021.
//  Copyright © 2021 Maxim Bekmetov. All rights reserved.
//

import UIKit

extension UIStackView {
    
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
    }
}
