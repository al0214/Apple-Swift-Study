//
//  CodePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by SamoYed on 2023/03/10.
//

import UIKit

protocol SendDataDeligate: AnyObject {
    func sendData(name: String)
}

class CodePresentViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    weak var delegate: SendDataDeligate? // 무조건 weak 사용 메모리 누수 위험
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    
    @IBAction func tabBackButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "Gunter")
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
}
