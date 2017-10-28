//
//  BottomBorder.swift
//  ChibiLoopiOS
//
//  Created by Vanessa Flores on 10/26/17.
//  Copyright © 2017 GordoPinguino. All rights reserved.
//

import UIKit

extension UITextField {
    func bottomBorder() {
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.lightGray.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width: self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
