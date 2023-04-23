//
//  ViewController.swift
//  AutoLayoutExam
//
//  Created by 김재우 on 2022/04/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tabChangeColorBtn(_ sender: UIButton) {
        self.colorView.backgroundColor = UIColor.blue
        print("색상 변경 버튼이 클릭되었습니다.")
    }
    
}

