//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Henrique Dos Santos on 9/18/18.
//  Copyright © 2018 HdosSant Co. All rights reserved.
//

import UIKit

@IBDesignable

class CurrencyTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.246869649)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white]) //it's okay to use the ! as long as it's properly initialized
            attributedPlaceholder = place //will override regular placeholder
            textColor =  #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
