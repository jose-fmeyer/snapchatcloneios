//
//  LoginVC.swift
//  snapchatclone
//
//  Created by Jose Meyer on 4/19/17.
//  Copyright © 2017 Jose Meyer. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailField: RoundedTextField!
    
    @IBOutlet weak var passwordField: RoundedTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        guard let email = emailField.text, !email.isEmpty else {
            let alert = UIAlertController(title: "Username required", message: "You must enter a valid username to login.", preferredStyle: .alert)
            alert.addFocusAction(title: "OK", toUIView: emailField)
            present(alert, animated: true, completion: nil)
            return
        }
        
        guard let password = passwordField.text, !password.isEmpty else {
            let alert = UIAlertController(title: "Password required", message: "You must enter a valid username to login.", preferredStyle: .alert)
            alert.addFocusAction(title: "OK", toUIView: passwordField)
            present(alert, animated: true, completion: nil)
            return
        }
    }
}
