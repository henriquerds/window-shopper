//
//  ViewController.swift
//  window-shopper
//
//  Created by Henrique Dos Santos on 9/18/18.
//  Copyright © 2018 HdosSant Co. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var wageTxtField: CurrencyTextField!
    @IBOutlet weak var priceTxtField: CurrencyTextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.5, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal) //this is the proper way to set the text on a button, it's different than on a label
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal) //.normal means the normal state of the button as opposed to the highlighted state or things like that
        calcBtn.addTarget(self, action: #selector(MainViewController.calculate), for: .touchUpInside)
        
        wageTxtField.inputAccessoryView = calcBtn
        priceTxtField.inputAccessoryView = calcBtn
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
    }
    
    
    @objc func calculate() {
        if let wageText = wageTxtField.text, let priceText = priceTxtField.text {
            if let wage = Double(wageText), let price = Double(priceText) {
                view.endEditing(true)
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        wageTxtField.text = ""
        priceTxtField.text = ""
    }
    


}

