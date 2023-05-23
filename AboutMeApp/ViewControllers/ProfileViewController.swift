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
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var departmentLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        setupBioLabels()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        bioPhotoView.layer.cornerRadius = bioPhotoView.frame.width / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.personBio = person.bio
    }
    
    private func setupBioLabels() {
        nameLabel.text = "Name: \(person.firstName)"
        lastNameLabel.text = "Last name : \(person.lastName)"
        ageLabel.text = "Age: \(person.age)"
        countryLabel.text = "Country: \(person.country)"
        companyLabel.text = "Company: \(person.company)"
        departmentLabel.text = "Department: \(person.department)"
    }
}
