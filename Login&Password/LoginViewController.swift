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
    }
    
    
    
    
    
    
    
    
    
}

