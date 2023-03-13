//
//  SattingViewController.swift
//  LEDBoard
//
//  Created by SamoYed on 2023/03/13.
//

import UIKit

protocol LEDBoardSettingDelegate: AnyObject{
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor)
}

class SettingViewController: UIViewController {
    @IBOutlet weak var TextField: UITextField!
    
  
   
    @IBOutlet weak var YellowButton: UIButton!
    @IBOutlet weak var PurpleButton: UIButton!
    @IBOutlet weak var GreenButton: UIButton!
    
    @IBOutlet weak var OrangeButton: UIButton!
    @IBOutlet weak var BlueButton: UIButton!
    @IBOutlet weak var BlackButton: UIButton!
    
    weak var delegate: LEDBoardSettingDelegate?
    var textColor: UIColor = .yellow // 노란색으로 초기화
    var backgroundColor: UIColor = .black // 검정색으로 초기화
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
   
    
    @IBAction func TabTextColorButton(_ sender: UIButton) {
        if sender == self.YellowButton {
            self.changeTextColor(color: .yellow)
            self.textColor = .yellow
        }
        else if sender == self.PurpleButton {
            self.changeTextColor(color: .purple)
            self.textColor = .purple
        }
        else {
            self.changeTextColor(color: .green)
            self.textColor = .green
        }
    }
    
    @IBAction func TabBackGroundColorButton(_ sender: UIButton) {
        if sender == self.BlackButton {
            self.changeBackgroundColor(color: .black)
            self.backgroundColor = .black
        }
        else if sender == self.BlueButton {
            self.changeBackgroundColor(color: .blue)
            self.backgroundColor = .blue
        }
        else {
            self.changeBackgroundColor(color: .orange)
            self.backgroundColor = .orange
        }
    }
    
    @IBAction func TabSaveBtuuon(_ sender: UIButton) {
        self.delegate?.changedSetting(text: self.TextField.text,
                                      textColor: self.textColor,
                                      backgroundColor: self.backgroundColor)
        self.navigationController?.popViewController(animated: true)
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
