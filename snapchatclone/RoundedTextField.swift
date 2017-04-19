//
//  RoundedTextField.swift
//  snapchatclone
//
//  Created by Jose Meyer on 4/19/17.
//  Copyright © 2017 Jose Meyer. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedTextField: UITextField {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable var borderWidht: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidht
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
    
    @IBInspectable var bgColor: UIColor? {
        didSet {
            backgroundColor = bgColor
        }
    }
    
    @IBInspectable var placeholderColor: UIColor? {
        didSet {
            let rawString = attributedPlaceholder?.string != nil ? attributedPlaceholder!.string : ""
            let str = NSAttributedString(string: rawString, attributes: [NSForegroundColorAttributeName : placeholderColor!])
            attributedPlaceholder = str
        }
    }
}
