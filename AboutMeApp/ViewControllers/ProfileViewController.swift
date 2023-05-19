//
//  ProfileViewController.swift
//  AboutMeApp
//
//  Created by Aleksandr Mamlygo on 19.05.23.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet var bioPhotoView: UIImageView!
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print(bioPhotoView.frame.width)
        bioPhotoView.layer.cornerRadius = bioPhotoView.frame.width / 2
    }
}
