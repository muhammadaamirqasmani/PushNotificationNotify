//
//  BorderButton.swift
//  Swoosh
//
//  Created by Muhammad Aamir on 12/08/2017.
//  Copyright © 2017 Muhammad Aamir. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
