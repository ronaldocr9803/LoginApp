//
//  RegisterViewController.swift
//  EnterpriseLoginApp
//
//  Created by ThangLai on 12/12/2 Reiwa.
//

import UIKit

class RegisterViewController: UIViewController {
    
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        passwordTextField.isSecureTextEntry = true
//        confirmPasswordTextField.isSecureTextEntry = true
        userNameTextField.delegate = self
        passwordTextField.delegate = self
        confirmPasswordTextField.delegate = self
//        UserDefaults.standard.removeObject(forKey: "username")
//        UserDefaults.standard.removeObject(forKey: "password")
        print(UserDefaults.standard.dictionaryRepresentation())
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    @IBAction func registerAccountPressed(_ sender: Any) {
        UserDefaults.standard.set(userNameTextField.text, forKey: "username")
        UserDefaults.standard.set(passwordTextField.text, forKey: "password")
        let alert = UIAlertController(title: "Suceesfully", message: "Create account Succesfully", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
        
    }
}

extension RegisterViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.userNameTextField.resignFirstResponder()
        self.passwordTextField.resignFirstResponder()
        self.confirmPasswordTextField.resignFirstResponder()
        return true
    }
    

}
