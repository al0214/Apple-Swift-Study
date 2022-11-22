//
//  CodePresentViewController.swift
//  ScreenTranditionalExam
//
//  Created by 김재우 on 2022/04/20.
//

import UIKit

protocol SendDataDelegate: AnyObject {
    func sendData(name: String)
}

class CodePresentViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var name:String?
    weak var delegate: SendDataDelegate? // delegate 함수를 사용할 때 에는 앞에 weak를 적어 준다. 적어주지 않을 시에 메모리 누수가 발생 할 수 있다.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }

        // Do any additional setup after loading the view.
    }
    

    @IBAction func tabBackBtn(_ sender: Any) {
        self.delegate?.sendData(name: "Samoyed")
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    

}
