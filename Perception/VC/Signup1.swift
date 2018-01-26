//
//  Signup1.swift
//  Perception
//
//  Created by Gavin on 1/17/18.
//  Copyright © 2018 Gavin McCabe. All rights reserved.
//

import UIKit

class Signup1: UIViewController {
    
    //IBOutlets
    
    @IBOutlet weak var nextBtn: RoundPinkButton!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var codeField: UITextField!
    
    
    func dismissScreen(){
        dismiss(animated: true, completion: nil)
    }
    
    func checkCompletionStatus(){
        if usernameField.text != nil && emailField.text != nil && passwordField != nil && codeField.text == "Persc"{
            nextBtn.backgroundColor = #colorLiteral(red: 0.9137254902, green: 0.2549019608, blue: 0.3411764706, alpha: 1)
            nextBtn.alpha = CGFloat(1.0)
            nextBtn.isEnabled = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        nextBtn.alpha = CGFloat(0.5)
        nextBtn.isEnabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //IBActions
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissScreen()
    }
    
    @IBAction func signInBtnPressed(_ sender: Any) {
        dismissScreen()
    }
    @IBAction func usernameFieldChanged(_ sender: Any) {
        checkCompletionStatus()
    }
    @IBAction func emailFieldChanged(_ sender: Any) {
        checkCompletionStatus()
    }
    @IBAction func passwordFieldChanged(_ sender: Any) {
        checkCompletionStatus()
    }
    @IBAction func codeFieldChanged(_ sender: Any) {
        checkCompletionStatus()
    }
    @IBAction func nextBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "toSignup2", sender: nil)
    }
}
