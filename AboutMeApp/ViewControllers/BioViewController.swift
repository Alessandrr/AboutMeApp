//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Aleksandr Mamlygo on 22.05.23.
//

import UIKit

class BioViewController: UIViewController {

    @IBOutlet var personBioLabel: UILabel!
    
    var personBio: String!
    
    override func viewDidLoad() {
        personBioLabel.text = personBio
    }
    
}
