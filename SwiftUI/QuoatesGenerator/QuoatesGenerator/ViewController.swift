//
//  ViewController.swift
//  QuoatesGenerator
//
//  Created by 김재우 on 2022/04/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoateLable: UILabel!
    @IBOutlet weak var nameLable: UILabel!
    
    let quotes = [
        Quoate(contents: "섹스하고 싶다", name: "정재성"),
        Quoate(contents: "한번의 선택 세가지 후회", name: "한세"),
        Quoate(contents: "죽음을 두려워하는 나머지 삶을 시작조차 못하는 사람이 많다", name: "벤다이크"),
        Quoate(contents: "Don't worry", name: "최진양"),
        Quoate(contents: "나는 애국보수다", name: "정재성"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tabQuoateGeneratorBtn(_ sender: Any) {
        let random = Int(arc4random_uniform(5)) // 0 ~ 4 사이의 난수를 생성
        let quoate = quotes[random]
        self.quoateLable.text = quoate.contents
        self.nameLable.text = quoate.name
        
    }
    
}

