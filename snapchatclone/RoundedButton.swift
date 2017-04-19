//
//  BoundedImageView.swift
//  snapchatclone
//
//  Created by Jose Meyer on 4/18/17.
//  Copyright © 2017 Jose Meyer. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 41
    }
}
