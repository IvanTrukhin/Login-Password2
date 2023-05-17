//
//  ViewController.swift
//  Login&Password
//
//  Created by Ivan on 16.05.2023.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: - IB Outlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: - Private properties
    private let user = User.getUserData()
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let welcomeVC = tabBarController.viewControllers?.first as! WelcomeViewController
        let navigationVC = tabBarController.viewControllers?.last as! UINavigationController
        let aboutUserVC = navigationVC.topViewController as! AboutMeViewController
        welcomeVC.user = user
        aboutUserVC.user = user
    }
    
    // MARK: IBActions
    
    @IBAction func LogInPressed() {
        guard
            userNameTextField.text == user.login,
            passwordTextField.text == user.password
        else {
            showAlert(title: "Invalid login or password", messege: "Please, enter correct login and password", textField: passwordTextField)
        return
        }
        performSegue(withIdentifier: "logIn", sender: nil)
    }
    
    
    
    
}
    
    // MARK: - Alert Controller
    extension LoginViewController {
        private func showAlert(title: String, messege: String, textField: UITextField? = nil) {
            let alert = UIAlertController(title: title, message: messege, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default) { _ in textField?.text = nil
            }
            alert.addAction(okAction)
            present(alert, animated: true)
        }
    }

