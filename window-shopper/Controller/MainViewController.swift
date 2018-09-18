//
//  ViewController.swift
//  window-shopper
//
//  Created by Henrique Dos Santos on 9/18/18.
//  Copyright © 2018 HdosSant Co. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var currencyTxtField: CurrencyTextField!
    @IBOutlet weak var priceTxtField: CurrencyTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.5, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal) //this is the proper way to set the text on a button, it's different than on a label
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal) //.normal means the normal state of the button as opposed to the highlighted state or things like that
        calcBtn.addTarget(self, action: #selector(MainViewController.calculate), for: .touchUpInside)
        
        currencyTxtField.inputAccessoryView = calcBtn
        priceTxtField.inputAccessoryView = calcBtn
    }
    
    
    @objc func calculate() {
        print("We got here!")
    }


}

