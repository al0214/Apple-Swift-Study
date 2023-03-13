//
//  ViewController.swift
//  LEDBoard
//
//  Created by SamoYed on 2023/03/10.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ContentsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ContentsLabel.textColor = .yellow
    }
}

