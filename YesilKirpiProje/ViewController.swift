//
//  ViewController.swift
//  YesilKirpiProje
//
//  Created by Gökşin Tokatlı on 21.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginameTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    @IBOutlet weak var errorLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func  didTapLoginButton(_ sender: UIButton){
        if usernameTextField.text == "gökşin", passwordTextField.isHidden {
            passwordTextField.isHidden = false
            errorLabel.isHidden = true
        } else{
            
            if usernameTextField.text != "gökşin"{
                errorLabel.text = "Hata: Kulanıcı adı alanı yanlış!"
                errorLabel.isHidden = false
            }else if !(passwordTextField.isHidden), passwordTextField.text == "123456" {
                activityIndicatorView.startAnimating()
                errorLabel.isHidden = true
            } else {
                errorLabel.text="Hata: Şifreniz yanlış! Lütfen tekrar deneyin."
                errorLabel.isHidden = false
            }
            
        }
        
    }
}
