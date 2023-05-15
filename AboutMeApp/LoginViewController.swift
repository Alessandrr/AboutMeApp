//
//  LoginViewController.swift
//  AboutMeApp
//
//  Created by Aleksandr Mamlygo on 15.05.23.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = usernameTF.text 
    }

    @IBAction func loginButtonPressed() {
        if isLoginOk() {
            performSegue(withIdentifier: "login", sender: nil)
        } else {
            showAlert(withTitle: "Error", message: "Wrong login or password")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text?.removeAll()
        passwordTF.text?.removeAll()
    }
    
    private func isLoginOk() -> Bool {
        usernameTF.text == "User" && passwordTF.text == "admin" ? true : false
    }
}

extension LoginViewController {
    func showAlert(withTitle title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Try again", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


