//
//  SettingsViewController.swift
//  AccessApp
//
//  Created by Artyom Guzenko on 27.05.2022.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var welcome = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Hello \(welcome)"
        
    }
    

  

}
