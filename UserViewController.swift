//
//  UserViewController.swift
//  App_Fitness
//
//  Created by Kaique Lopes on 27/07/21.
//

import UIKit

class UserViewController: ViewController {
    @IBOutlet weak var lbUser: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbUser.text = services.user
    }

}
