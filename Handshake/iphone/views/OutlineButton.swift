//
//  OutlineButton.swift
//  Handshake
//
//  Created by Sam Ober on 4/2/15.
//  Copyright (c) 2015 Handshake. All rights reserved.
//

import UIKit

@IBDesignable
class OutlineButton: UIButton {
    
    @IBInspectable var borderColor: UIColor = UIColor.blackColor() {
        didSet {
            if !self.highlighted {
                self.layer.borderColor = self.borderColor.CGColor
            }
        }
    }
    @IBInspectable var borderColorHighlighted: UIColor = UIColor.grayColor() {
        didSet {
            if self.highlighted {
                self.layer.borderColor = self.borderColorHighlighted.CGColor
            }
        }
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.layer.masksToBounds = true
        self.layer.borderWidth = 1
        self.layer.borderColor = self.borderColor.CGColor
        self.layer.cornerRadius = 6
    }
    
    override var highlighted: Bool {
        didSet {
            if self.highlighted {
                self.layer.borderColor = self.borderColorHighlighted.CGColor
            } else {
                self.layer.borderColor = self.borderColor.CGColor
            }
        }
    }
    
}