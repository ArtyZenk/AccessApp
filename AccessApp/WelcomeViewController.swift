//
//  ViewController.swift
//  AccessApp
//
//  Created by Artyom Guzenko on 26.05.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: - Elements
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Actions
    @IBAction func logInButtonPressed() {
        
    }
    
    @IBAction func forgotLoginButtonPressed() {
        showAlert(title: "Login is invalid", message: "True login is user")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(title: "Password is invalid", message: "True password is password")
    }
    
}

// MARK: - Private methods 
extension WelcomeViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let okButton = UIAlertAction(title: "Ok", style: .default)
        
        alert.addAction(okButton)
        
        self.present(alert, animated: true)
    }
}

