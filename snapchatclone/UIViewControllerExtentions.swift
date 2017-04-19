//
//  UIViewControllerExtentions.swift
//  snapchatclone
//
//  Created by Jose Meyer on 4/19/17.
//  Copyright © 2017 Jose Meyer. All rights reserved.
//

import UIKit

extension UIAlertController {
    
    func addFocusAction(title: String, toUIView view: UIView) {
        self.addAction(UIAlertAction(title: title, style: .cancel, handler: { (action) in
            view.becomeFirstResponder()
        }))
    }
}
