//
//  CodePushViewController.swift
//  ScreenTranditionalExam
//
//  Created by 김재우 on 2022/04/20.
//

import UIKit

class CodePushViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }

    }
    
    @IBAction func tabBackBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
