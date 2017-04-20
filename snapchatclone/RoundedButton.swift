//
//  BoundedImageView.swift
//  snapchatclone
//
//  Created by Jose Meyer on 4/18/17.
//  Copyright © 2017 Jose Meyer. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
}
