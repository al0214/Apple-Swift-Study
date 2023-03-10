//
//  SuguePushViewController.swift
//  ScreenTransitionExample
//
//  Created by SamoYed on 2023/03/10.
//

import UIKit

class SuguePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tabBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
//       self.navigationController?.popToRootViewController(animated: true) RootView로 바로 넘어가게 할려면 위 함수를 사용하면된다.
    }
}
