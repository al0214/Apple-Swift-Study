//
//  ViewController.swift
//  AutoLayoutExam
//
//  Created by SamoYed on 2023/03/07.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func TabChangeColorButton(_ sender: UIButton) {
        self.colorView.backgroundColor = UIColor.blue
        print("색상이 변경 버튼이 클릭됨")
    }
    
}

