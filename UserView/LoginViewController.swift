//
//  ViewController.swift
//  UserView
//
//  Created by Lepestok Jora on 06.11.2022.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var loginTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        
        
    }


    // пишем функцию проверки что логин user соответствует тексту user, а пароль равен тексту пассворда
    func checkTextTF (login: String?, password: String?) -> Bool{
        if login == "User" && password == "123"{
            return true
        }
            return false
    }
   
    // кнопка лог ин для подтверждения верного ввода данных в поля 1,2
    
    @IBAction func forgotPasswordAction(_ sender: Any) {
        showAllert(title:  "Oops!", massage: "Your password is 123")
    }
    @IBAction func forgotLoginAction(_ sender: Any) {
        
        // показываем алерт с текстом Oops! Your name is User
        showAllert(title:  "Oops!", massage: "Your name is User")
        
    }
    
    @IBAction func loginAction() {
        
        if checkTextTF(login: loginTF.text, password: passwordTF.text) == false {
            //показываем аллерт ошибки  для полей логин и пароль
            showAllert(title: "Invalid login or password", massage: "Enter correct login and password")
        }
       
    }
    
    func showAllert (title: String, massage: String){
        //если не верно введен логин, то появиться окно предупрждение "Invalid login or password" Plase, Enter correct login and password
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
        print ("Alert closed")
        }))
        self.present(alert, animated: true, completion: nil)
        
        
    }
  
   // На втором экране WelcomeViewController нужно отобразить его имя и кнопку логаута.
    
   
    
    
    
    
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tapGesture = UITapGestureRecognizer(target: self,
                         action: #selector(hideKeyboard))
        view.addGestureRecognizer(tapGesture)
    }

    @objc func hideKeyboard() {
        view.endEditing(true)
    }
}




