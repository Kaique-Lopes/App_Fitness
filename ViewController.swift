//
//  ViewController.swift
//  App_Fitness
//
//  Created by Kaique Lopes on 27/07/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var tfUser: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPass: UITextField!
    var services: Services!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tfUser.delegate = self
        tfEmail.delegate = self
        tfPass.delegate = self
        services = Services()
        
        tfUser.attributedPlaceholder = NSAttributedString(string:"Digite seu usuário", attributes:[NSAttributedString.Key.foregroundColor: UIColor.black])
        tfEmail.attributedPlaceholder = NSAttributedString(string:"Digite seu e-mail", attributes:[NSAttributedString.Key.foregroundColor: UIColor.black])
        tfPass.attributedPlaceholder = NSAttributedString(string:"Digite sua senha", attributes:[NSAttributedString.Key.foregroundColor: UIColor.black])
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! UserViewController
        vc.services = services
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == tfUser {
            tfEmail.becomeFirstResponder()
        } else if textField == tfEmail {
            tfPass.becomeFirstResponder()
        } else if textField == tfPass {
            tfUser.becomeFirstResponder()
        }
        services.user = textField.text!
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return !textField.text!.isEmpty
    }
    
}

