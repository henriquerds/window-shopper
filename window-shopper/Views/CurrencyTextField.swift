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
    
    override func draw(_ rect: CGRect) { //don't ever implement this empty
        
        let size: CGFloat = 20 //use CGFLoat because if we don't specifcy it will default to Double and in draw you need to use CGFloat
        let currencyLabel = UILabel(frame: CGRect(x: 10, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.8659815192, green: 0.8608341813, blue: 0.869938612, alpha: 0.8034567637)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.2436864078, green: 0.2422441244, blue: 0.2447991967, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
        
    }
    
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
        
        clipsToBounds = true
        
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white]) //it's okay to use the ! as long as it's properly initialized
            attributedPlaceholder = place //will override regular placeholder
            textColor =  #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
