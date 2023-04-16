//
//  MainViewCOntroller.swift
//  Spotify_Login
//
//  Created by SamoYed on 2023/04/15.
//

import UIKit
import FirebaseAuth

class MainViewController: UIViewController {
    @IBOutlet weak var ressetPasswordButton: UIButton!
    @IBOutlet weak var welcomLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = true
        
        let email = Auth.auth().currentUser?.email ?? "고객"
        
        welcomLabel.text = """
        환영합니다
        \(email)님
        """
        
        let isEmailSignIn = Auth.auth().currentUser?.providerData[0].providerID == "password"
        ressetPasswordButton.isHidden = isEmailSignIn
    }
    
    @IBAction func resetPasswordButtonTaped(_ sender: Any) {
        let email = Auth.auth().currentUser?.email ?? ""
        Auth.auth().sendPasswordReset(withEmail: email, completion: nil)
    }
    
    @IBAction func logoutButtonTaped(_ sender: UIButton) {
        let firebaseAuth = Auth.auth()
            self.navigationController?.popToRootViewController(animated: true)
        do {
            try firebaseAuth.signOut()
        } catch let signOutError as NSError {
            print("ERROR: signout \(signOutError.localizedDescription)")
        }
       
        
    }
}
