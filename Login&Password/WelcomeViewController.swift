//
//  WelcomeViewController.swift
//  Login&Password
//
//  Created by Ivan on 16.05.2023.
//

import Foundation
import UIKit


class WelcomeViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var welcomeLabel: UILabel!
    
    // MARK: - Public properties
    var user: User!
    
    // MARK: - Private properties
    private let primaryColor = UIColor(
    red: 220/255,
    green: 100/255,
    blue: 130/255,
    alpha: 1
    )
    private let secondaryColor = UIColor(
    red: 100/255,
    green: 110/255,
    blue: 130/255,
    alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        welcomeLabel.text = "Welcome, \(user.login)"
    }
}

    // MARK: - Set background color
    extension WelcomeViewController {
        func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
            let gradient = CAGradientLayer()
            gradient.frame = view.bounds
            gradient.colors = [topColor.cgColor, bottomColor.cgColor]
            gradient.locations = [0.0, 1.0]
            gradient.startPoint = CGPoint(x: 0, y: 0)
            view.layer.insertSublayer(gradient, at: 0)
        }
    }
