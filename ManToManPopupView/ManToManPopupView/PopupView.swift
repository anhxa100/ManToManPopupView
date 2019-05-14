//
//  PopupView.swift
//  ManToManPopupView
//
//  Created by duycuong on 5/14/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class PopupView: UIView {
    @IBOutlet weak var neckView: UIView!
    
    @IBOutlet weak var corverButton: UIButton!
    
    weak var selectedButton: Button?
    
    var isOpen: Bool = false {
        didSet {
            corverButton.alpha = isOpen ? 0.6 : 0
            if !isOpen {
                self.removeFromSuperview()
                selectedButton?.isSelected = false
            }
        }
    }
    
    func layoutWhenButtonClicked(_ button: Button) {
        isOpen = true
        neckView.frame = CGRect(x: button.frame.minX + 4, y: 0, width: button.frame.width, height: 20)
        selectedButton = button
    }
    
    @IBAction func clickedCorverButton(_ sender: Any) {
        isOpen = false
    }
}
