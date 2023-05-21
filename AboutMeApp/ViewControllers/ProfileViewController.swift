//
//  ProfileViewController.swift
//  AboutMeApp
//
//  Created by Aleksandr Mamlygo on 19.05.23.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet var bioPhotoView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var lastNameLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        nameLabel.text = "Name: \(person.firstName)"
        lastNameLabel.text = "Last name : \(person.secondName)"
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        bioPhotoView.layer.cornerRadius = bioPhotoView.frame.width / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.personBio = person.bio
    }
}
