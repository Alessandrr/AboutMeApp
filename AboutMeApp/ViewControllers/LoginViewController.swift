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
    
    private let user = User.getUser()
    
    //MARK: - Override functions
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.personName = user.person.fullName
            } else if let navigationVC = viewController as? UINavigationController {
                if let profileVC = navigationVC.topViewController as? ProfileViewController {
                    profileVC.person = user.person
                }
            }
        }
    }
    
    //MARK: - IBActions
    @IBAction func loginButtonPressed() {
        if isLoginOk() {
            performSegue(withIdentifier: "login", sender: nil)
        } else {
            showAlert(
                withTitle: "Invalid login or password",
                message: "Please, enter a correct combination",
                textField: passwordTF
            )
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text?.removeAll()
        passwordTF.text?.removeAll()
    }
    
    @IBAction func forgotDataPressed(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Hint", message: "Username is \(user.login)")
        : showAlert(withTitle: "Hint", message: "Password is \(user.password)")
    }
    
    // MARK: - Private functions
    private func isLoginOk() -> Bool {
        usernameTF.text == user.login && passwordTF.text == user.password
    }
    
}

//MARK: - Extensions
extension LoginViewController {
    func showAlert(withTitle title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text?.removeAll()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


