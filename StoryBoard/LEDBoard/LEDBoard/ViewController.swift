//
//  ViewController.swift
//  LEDBoard
//
//  Created by SamoYed on 2023/03/10.
//

import UIKit

class ViewController: UIViewController, LEDBoardSettingDelegate {
    @IBOutlet weak var ContentsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ContentsLabel.textColor = .yellow
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingViewController = segue.destination as? SettingViewController {
            settingViewController.delegate = self
        }
        
    }
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor) {
        if let text = text {
            self.ContentsLabel.text = text
        }
        self.ContentsLabel.textColor = textColor
        self.view.backgroundColor = backgroundColor
    }
}

