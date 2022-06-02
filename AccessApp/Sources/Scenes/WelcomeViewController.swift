//
//  SettingsViewController.swift
//  AccessApp
//
//  Created by Artyom Guzenko on 27.05.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Hello \(user.login)"
        view.backgroundColor = .systemGray
    }
}
