//
//  WelcomeViewController.swift
//  UserView
//
//  Created by Lepestok Jora on 06.11.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLable: UILabel!
    var loginText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //если логинтекст не пустой
        if loginText?.count ?? 0 > 0 {
            //заполняем лейбл логинам
            welcomeLable.text = "Welcome \(loginText!)"
        }
    }
    
    @IBAction func backAction(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
}


