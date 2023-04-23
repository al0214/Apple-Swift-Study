//
//  SeguePresentViewController.swift
//  ScreenTranditionalExam
//
//  Created by 김재우 on 2022/04/20.
//

import UIKit

class SeguePresentViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tabBackBtn(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
        
    }
}
