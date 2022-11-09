//
//  BioViewController.swift
//  UserView
//
//  Created by Lepestok Jora on 09.11.2022.
//

import UIKit

class BioViewController: UIViewController {

    @IBOutlet weak var bioLabel: UILabel!
    var biography: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bioLabel.text = biography
        
    }
}
