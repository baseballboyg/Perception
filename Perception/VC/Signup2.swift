//
//  Signup2.swift
//  Perception
//
//  Created by Gavin on 1/17/18.
//  Copyright © 2018 Gavin McCabe. All rights reserved.
//

import UIKit

class Signup2: UIViewController {

    
    @IBOutlet weak var codeField: UITextField!
    @IBOutlet weak var nextBtn: RoundPinkButton!
    
    func dismiss(){
        dismiss(animated: true, completion: nil)
    }
    
    func checkCompletionStatus(){
        if codeField.text == "test"{
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
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        
        dismiss()
        
    }
  
    @IBAction func nextBtnPressed(_ sender: Any) {
    }
    
    
}
