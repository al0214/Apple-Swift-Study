//
//  ViewController.swift
//  LEDBoard
//
//  Created by 김재우 on 2022/04/21.
//

import UIKit

class ViewController: UIViewController, LEDBoardSettingDelegate {
    
    @IBOutlet weak var ContentLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ContentLabel.textColor = .yellow
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingViewController = segue.destination as? SettingViewController {
            settingViewController.delegate = self
            settingViewController.ledText = self.ContentLabel.text
            settingViewController.textColor = self.ContentLabel.textColor
            settingViewController.backgroundColor = self.view.backgroundColor ?? .black
        }
    }
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor) {
        if let text = text {
            self.ContentLabel.text = text
        }
        self.ContentLabel.textColor = textColor
        self.view.backgroundColor = backgroundColor
    }
}
