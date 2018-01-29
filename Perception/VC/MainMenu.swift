//
//  MainMenu.swift
//  Perception
//
//  Created by Gavin McCabe on 1/28/18.
//  Copyright © 2018 Gavin McCabe. All rights reserved.
//

import UIKit

class MainMenu: UIViewController {

    //IBOutlets
    
    @IBOutlet weak var prevDateLabel: UILabel!
    @IBOutlet weak var prevMonthLabel: UILabel!
    @IBOutlet weak var currentDateLabel: UILabel!
    @IBOutlet weak var currentMonthLabel: UILabel!
    @IBOutlet weak var nextDateLabel: UILabel!
    @IBOutlet weak var nextMonthLabel: UILabel!
    @IBOutlet weak var currentTimeLabel: UILabel!
    @IBOutlet weak var convergenceSubtextLabel: UILabel!
    @IBOutlet weak var followMeSubtextLabel: UILabel!
    @IBOutlet weak var bubbleShooterSubtextLabel: UILabel!
    @IBOutlet weak var convergenceIndicator: smallCircles!
    @IBOutlet weak var followMeIndicator: smallCircles!
    @IBOutlet weak var bubbleShooterIndicator: smallCircles!
    @IBOutlet weak var burgerButton: UIButton!
    
    var timer = Timer()
    
    let cal = Calendar.current

    @objc func updateDates(){
        print("Updated")
        let currentHour = cal.component(.hour, from: Date())
        let currentMinute = cal.component(.minute, from: Date())
        let currentDay = cal.component(.day, from: Date())
        let currentMonthNumber = cal.component(.month, from: Date())

        currentTimeLabel.text = "\(String(currentHour)):\(String(minuteTo2Digits(int: currentMinute)))"
        currentDateLabel.text = "\(String(currentDay))"
        currentMonthLabel.text = "\(String(monthToString(int: currentMonthNumber)))"
    }
    
    func monthToString(int: Int) -> String{
        let months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
        return String(months[int - 1])
    }
    
    func minuteTo2Digits(int: Int) -> Int{
        if int < 10{
            let minutes = [00,01,02,03,04,05,06,07,08,09]
            return minutes[int]
        }else{
            return int
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDates()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(MainMenu.updateDates), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
