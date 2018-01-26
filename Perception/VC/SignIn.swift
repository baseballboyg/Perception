//
//  ViewController.swift
//  Perception
//
//  Created by Gavin on 1/16/18.
//  Copyright © 2018 Gavin McCabe. All rights reserved.
//

import UIKit
import PKHUD

class SignIn: UIViewController {
    
    //IBOutlets
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    func errorHUD(){
        HUD.flash(.error, delay: 1.0)
    }
    
    func successHUD(){
        HUD.flash(.success, delay: 1.0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }

    //IBActions
    @IBAction func signInPressed(_ sender: Any) {
        if usernameField.text != "admin" && passwordField.text != "password"{
            errorHUD()
        }else{
            performSegue(withIdentifier: "signInComplete", sender: nil)
        }
    }

}


