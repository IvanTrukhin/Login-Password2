//
//  AboutMeViewController.swift
//  Login&Password
//
//  Created by Ivan on 16.05.2023.
//

import Foundation
import UIKit

class AboutMeViewController: UIViewController {
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName
    }
}
