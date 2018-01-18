//
//  Signup2.swift
//  Perception
//
//  Created by Gavin on 1/17/18.
//  Copyright © 2018 Gavin McCabe. All rights reserved.
//

import UIKit

class Signup2: UIViewController {

    func dismiss(){
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        
        dismiss()
        
    }
  
    
    
}
