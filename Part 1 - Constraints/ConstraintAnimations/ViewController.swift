//
//  ViewController.swift
//  ConstraintAnimations
//
//  Created by Spencer Curtis on 2/7/19.
//  Copyright © 2019 Spencer Curtis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var redViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var redViewAspectRatioConstraint: NSLayoutConstraint!
    @IBOutlet weak var redViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var redViewBottomConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func animateSquare(_ sender: Any) {

        redViewTopConstraint.constant = 200
        UIView.animate(withDuration: 1) {
            //In order to show the changes to the constant on the view we need to tell the superview to layout its subviews

            self.view.layoutIfNeeded()


        }
        
    }
    
    @IBAction func changeConstraints(_ sender: Any) {

        redViewTopConstraint.isActive = !redViewTopConstraint.isActive
        redViewBottomConstraint.isActive = !redViewBottomConstraint.isActive

        UIView.animate(withDuration: 1.5) {
            self.view.layoutIfNeeded()
        }

    }
}

