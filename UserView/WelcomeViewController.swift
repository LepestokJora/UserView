//
//  WelcomeViewController.swift
//  UserView
//
//  Created by Lepestok Jora on 06.11.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLable: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        }
  
    
    @IBAction func backAction(_ sender: Any) {
     //передаем User Name с первого экрана в лейбл второго экрана
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
