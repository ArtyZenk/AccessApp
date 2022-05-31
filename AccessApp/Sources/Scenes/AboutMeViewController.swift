//
//  AboutMeViewController.swift
//  AccessApp
//
//  Created by Artyom Guzenko on 31.05.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet weak var profilePhoto: UIImageView!
    var user = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profilePhoto.image = UIImage(named: user)
    }
}
