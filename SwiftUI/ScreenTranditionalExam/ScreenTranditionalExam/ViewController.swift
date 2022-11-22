//
//  ViewController.swift
//  ScreenTranditionalExam
//
//  Created by 김재우 on 2022/04/20.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate {

    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tabCodePushBtn(_ sender: UIButton) {
       guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController")
                as? CodePushViewController
        else {return}
        viewController.name = "Samoyed"
                self.navigationController?.pushViewController(viewController, animated: true)
        
    }
    @IBAction func tabCodePresentBtn(_ sender: UIButton) {
        guard let viewController =
                self.storyboard?.instantiateViewController(identifier: "CodePresentViewController")
                as? CodePresentViewController
        else {return}
        self.present(viewController, animated: true, completion: nil)
        viewController.modalPresentationStyle = .fullScreen
        viewController.name = "Samoyed"
        viewController.delegate = self

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SeguePushViewController {
            viewController.name = "Samoyed"
        }
    }
    func sendData(name: String) {
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
    }
    
        
}
    


