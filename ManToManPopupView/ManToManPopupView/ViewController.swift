//
//  ViewController.swift
//  ManToManPopupView
//
//  Created by duycuong on 5/14/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var headerButtons: [UIButton]!
    
    @IBOutlet weak var popUpView: PopupView!
    
    @IBOutlet weak var headerView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    private func addPopupView() {
        view.addSubview(popUpView)
        popUpView.fill(left: 0, top: nil, right: 0, bottom: -100)
        popUpView.topAnchor.constraint(equalTo: headerView.bottomAnchor).isActive = true
    }
    
    // MARK: - Actions
    @IBAction func clickedHeaderButton(sender: Button) {
        headerButtons.forEach {$0.isSelected = false}
        // đổi trạng thái
        sender.isSelected = !sender.isSelected
        addPopupView()
        popUpView.layoutWhenButtonClicked(sender)
    }

}

