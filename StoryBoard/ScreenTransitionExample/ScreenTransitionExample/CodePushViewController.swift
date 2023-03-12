//
//  CodePushViewController.swift
//  ScreenTransitionExample
//
//  Created by SamoYed on 2023/03/10.
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
    
    @IBAction func tabBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
   
}
