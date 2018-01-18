
//
//  RoundPinkButton.swift
//  Perception
//
//  Created by Gavin on 1/16/18.
//  Copyright © 2018 Gavin McCabe. All rights reserved.
//

import UIKit
@IBDesignable class RoundPinkButton: UIButton {

    override func prepareForInterfaceBuilder() {
        Load()
    }
    override func awakeFromNib() {
        Load()
    }
    
    func Load(){
        super.awakeFromNib()
        layer.cornerRadius = layer.frame.size.height / 2
        backgroundColor = #colorLiteral(red: 0.9137254902, green: 0.2549019608, blue: 0.3411764706, alpha: 1)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
