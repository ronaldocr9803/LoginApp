//
//  SignInViewController.swift
//  EnterpriseLoginApp
//
//  Created by ThangLai on 12/12/2 Reiwa.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.delegate = self
        passwordTextField.delegate = self
        
//        print(UserDefaults.standard.dictionaryRepresentation())
        print(UserDefaults.standard.object(forKey: "username"))
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func signInPressed(_ sender: Any) {
        
//        if let username = UserDefaults.standard.value(forKey: "username") {
//
//        }
        guard let username = UserDefaults.standard.value(forKey: "username")  else { return }
        guard let password = UserDefaults.standard.value(forKey: "password") else { return }
        
        if userNameTextField.text == username as! String && passwordTextField.text == password as! String {
            let alert = UIAlertController(title: "Login Succesfully", message: nil, preferredStyle: .alert)
            let successAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(successAction)
            self.present(alert, animated: true, completion: nil)
        }
        else {
            let alert = UIAlertController(title: "Error", message: "Invalid username or password", preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            alert.addAction(cancelAction)
            self.present(alert, animated: true, completion: {
                let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissAlertController))
                        alert.view.superview?.subviews[0].addGestureRecognizer(tapGesture)
            })
        }
        

        
//        if userNameTextField.text == "" || passwordTextField.text == "" {
//            let alert = UIAlertController(title: "Error", message: "Invalid username or password", preferredStyle: .alert)
//            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
//            alert.addAction(cancelAction)
//            self.present(alert, animated: true, completion: {
//                let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissAlertController))
//                        alert.view.superview?.subviews[0].addGestureRecognizer(tapGesture)
//            })
//        }
//        else {
//            print("Success")
//            let alert = UIAlertController(title: "Login Succesfully", message: nil, preferredStyle: .alert)
//            let successAction = UIAlertAction(title: "OK", style: .default, handler: nil)
//            alert.addAction(successAction)
//            self.present(alert, animated: true, completion: nil)
//
//        }
        
    }
    @objc func dismissAlertController(){
        self.dismiss(animated: true, completion: nil)
        
    }
    
}


extension SignInViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.userNameTextField.resignFirstResponder()
        self.passwordTextField.resignFirstResponder()
        return true
    }
    
    
}
