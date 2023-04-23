//
//  SettingViewController.swift
//  LEDBoard
//
//  Created by 김재우 on 2022/04/21.
//

import UIKit

protocol LEDBoardSettingDelegate: AnyObject {
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor )
}

class SettingViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var yellowBtn: UIButton!
    @IBOutlet weak var GreenBtn: UIButton!
    @IBOutlet weak var PurpleBtn: UIButton!
    @IBOutlet weak var BlackBtn: UIButton!
    @IBOutlet weak var BlueBtn: UIButton!
    @IBOutlet weak var orangeBtn: UIButton!
    
    // 값 초기화
    weak var delegate: LEDBoardSettingDelegate?
    var ledText: String?
    var textColor: UIColor = .yellow
    var backgroundColor: UIColor = .black
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
    }
    private func configureView() {
        if let ledText = self.ledText {
            self.textField.text = ledText
            }
        self.changeTextColor(color: self.textColor)
        self.changedBackgroundColor(color: self.backgroundColor)
        }
        
    
    
    @IBAction func tabTextColorBtn(_ sender: UIButton) {
            if sender == self.yellowBtn {
                self.changeTextColor(color: .yellow)
                self.textColor = .yellow
        }   else if sender == self.GreenBtn {
                self.changeTextColor(color: .green)
            self.textColor = .green
        }   else {
                self.changeTextColor(color: .purple)
            self.textColor = .purple
        }
    }
    
    @IBAction func tabBackgroundColorBtn(_ sender: UIButton) {
        if sender == self.BlackBtn {
            self.changedBackgroundColor(color: .black)
            self.backgroundColor = .black
        } else if  sender == self.BlueBtn {
            self.changedBackgroundColor(color: .blue)
            self.backgroundColor = .blue
        } else {
            self.changedBackgroundColor(color: .orange)
            self.backgroundColor = .orange
        }
    }
    
     
    @IBAction func tabSaveBtn(_ sender: UIButton) {
        self.delegate?.changedSetting(text: self.textField.text, textColor: self.textColor, backgroundColor: self.backgroundColor)
        self.navigationController?.popViewController(animated: true)
    }
    
        
    
    
    private func changeTextColor(color: UIColor){
        self.yellowBtn.alpha = color == UIColor.yellow ? 1 : 0.2
        self.GreenBtn.alpha = color == UIColor.green ? 1 : 0.2
        self.PurpleBtn.alpha = color == UIColor.purple ? 1 : 0.2
    }
    
    private func changedBackgroundColor(color: UIColor){
        self.BlackBtn.alpha = color == UIColor.black ? 1 : 0.2
        self.BlueBtn.alpha = color == UIColor.blue ? 1 : 0.2
        self.orangeBtn.alpha = color == UIColor.orange ? 1 : 0.2
    }
}
