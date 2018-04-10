//
//  CardView.swift
//  New New
//
//  Created by Bryan Brotonel on 2018-03-23.
//  Copyright © 2018 Bryan Brotonel. All rights reserved.
//

import UIKit

@IBDesignable class CardView: UIView {
    
    @IBInspectable var cornerRadius : CGFloat = 15
    
    @IBInspectable var shadowRadius : CGFloat = 10
    
    @IBInspectable var shadowColor : UIColor = UIColor.black
    
    @IBInspectable var shadowOpacity : CGFloat = 0.5
    
    override func layoutSubviews() {
        
        layer.shadowRadius = shadowRadius
        
        layer.cornerRadius = cornerRadius
        
        layer.shadowColor = shadowColor.cgColor
        
        layer.shadowOffset = .zero
        
        layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius).cgPath
        
        layer.shadowOpacity = Float(shadowOpacity)
    }
    
}

