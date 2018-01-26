//
//  smallCircles.swift
//  Perception
//
//  Created by Gavin on 1/26/18.
//  Copyright © 2018 Gavin McCabe. All rights reserved.
//

import UIKit

@IBDesignable
class smallCircles: UIView {

    override func prepareForInterfaceBuilder() {
        Load()
    }
    
    override func awakeFromNib() {
        Load()
    }
    
    func Load(){
        super.awakeFromNib()
        layer.frame.size.width = 10
        layer.frame.size.height = 10
        layer.cornerRadius = 5
        backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
    }

}
