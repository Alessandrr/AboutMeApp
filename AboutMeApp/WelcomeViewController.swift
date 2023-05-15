//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Aleksandr Mamlygo on 15.05.23.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(userName ?? "")!"
    }
    

}
