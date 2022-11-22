//
//  SeguePushViewController.swift
//  ScreenTranditionalExam
//
//  Created by 김재우 on 2022/04/20.
//

import UIKit

class SeguePushViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    
    override func viewDidLoad() {
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
        
        super.viewDidLoad()
    }
    @IBAction func tabBackBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        
    }
}
