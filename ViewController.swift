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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tfUser.delegate = self
        tfEmail.delegate = self
        tfPass.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == tfUser {
            tfEmail.becomeFirstResponder()
        }
        return true
    }

}

