//
//  ViewController.swift
//  AccessApp
//
//  Created by Artyom Guzenko on 26.05.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - Elements
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    // MARK: - Model
    private let user = User.getInfo()
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = user.login
    }
    
    // MARK: - Actions
    @IBAction func logInButtonPressed() {
        guard
            loginTF.text == user.login && passwordTF.text == user.password
        else {
            return showAlert(title: "Login or password is invalid", message: "Please enter correct")
        }
    }
 
    @IBAction func forgotButtonsPressed(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Login is invalid", message: "True login is user")
        : showAlert(title: "Password is invalid", message: "True password is password")
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        loginTF.text = String()
        passwordTF.text = String()
    }
}

// MARK: - Alert controller
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let okButton = UIAlertAction(title: "Ok", style: .default)
        
        alert.addAction(okButton)
        
        present(alert, animated: true)
    }
}

// MARK: - UITextFieldDelegate
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginTF {
            passwordTF.becomeFirstResponder()
        } else {
            logInButtonPressed()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        return true
    }
}
