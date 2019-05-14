//
//  Button.swift
//  ManToManPopupView
//
//  Created by duycuong on 5/14/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class Button: UIButton {
    override var isSelected: Bool {
        didSet {
            backgroundColor = isSelected ? UIColor.white : UIColor.clear
            titleLabel?.textColor = isSelected ? UIColor.blue : UIColor.white
        }
    }
    
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 10, height: 10))
        let maskLayer = CAShapeLayer()
        maskLayer.path = path.cgPath
        self.layer.mask = maskLayer
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        isSelected = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        //fatalError("init(coder:) has not been implemented")
        super.init(coder: aDecoder)
    }
}
