//
//  LoginViewController.swift
//  AboutMeApp
//
//  Created by Aleksandr Mamlygo on 15.05.23.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var forgotNameButton: UIButton!
    
    //MARK: - Override functions
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = usernameTF.text 
    }
    
    //MARK: - IBActions
    @IBAction func loginButtonPressed() {
        if isLoginOk() {
            performSegue(withIdentifier: "login", sender: nil)
        } else {
            showAlert(withTitle: "Invalid login or password", message: "Please, enter a correct combination")
            passwordTF.text?.removeAll()
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text?.removeAll()
        passwordTF.text?.removeAll()
    }
    
    @IBAction func forgotDataPressed(_ sender: UIButton) {
        switch sender {
        case forgotNameButton:
            showAlert(withTitle: "Hint", message: "Username is User")
        default:
            showAlert(withTitle: "Hint", message: "Password is admin")
        }
    }
    
    // MARK: - Private functions
    private func isLoginOk() -> Bool {
        usernameTF.text == "User" && passwordTF.text == "admin" ? true : false
    }
    
}

//MARK: - Extensions
extension LoginViewController {
    func showAlert(withTitle title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


