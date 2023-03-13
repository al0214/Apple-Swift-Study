//
//  SattingViewController.swift
//  LEDBoard
//
//  Created by SamoYed on 2023/03/13.
//

import UIKit

class SettingViewController: UIViewController {
    @IBOutlet weak var TextField: UITextField!
    
  
   
    @IBOutlet weak var YellowButton: UIButton!
    @IBOutlet weak var PurpleButton: UIButton!
    @IBOutlet weak var GreenButton: UIButton!
    
    @IBOutlet weak var OrangeButton: UIButton!
    @IBOutlet weak var BlueButton: UIButton!
    @IBOutlet weak var BlackButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
   
    
    @IBAction func TabTextColorButton(_ sender: UIButton) {
        if sender == self.YellowButton {
            self.changeTextColor(color: .yellow)
        }
        else if sender == self.PurpleButton {
            self.changeTextColor(color: .purple)
        }
        else {
            self.changeTextColor(color: .green)
        }
    }
    @IBAction func TabBackGroundColorButton(_ sender: UIButton) {
        if sender == self.BlackButton {
            self.changeBackgroundColor(color: .black)
        }
        else if sender == self.BlueButton {
            self.changeBackgroundColor(color: .blue)
        }
        else {
            self.changeBackgroundColor(color: .orange)
        }
    }
    @IBAction func TabSaveBtuuon(_ sender: UIButton) {
    }
    
    private func changeTextColor(color: UIColor) {
        self.YellowButton.alpha = color == UIColor.yellow ? 1 : 0.2
        self.PurpleButton.alpha = color == UIColor.purple ? 1 : 0.2
        self.GreenButton.alpha = color == UIColor.green ? 1 : 0.2
    }
    
    private func changeBackgroundColor(color: UIColor) {
        self.BlackButton.alpha = color == UIColor.black ? 1 : 0.2
        self.OrangeButton.alpha = color == UIColor.orange ? 1 : 0.2
        self.BlueButton.alpha = color == UIColor.blue ? 1 : 0.2
    }
}
