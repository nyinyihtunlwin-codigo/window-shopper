//
//  ViewController.swift
//  window-shopper
//
//  Created by Administrator on 8/10/20.
//  Copyright © 2020 Nyi Nyi Htun Lwin. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var tfHourlyWage: CustomTextField!
    @IBOutlet weak var tfItemPrice: CustomTextField!
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var lbHours: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btnCalculate = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        btnCalculate.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        btnCalculate.setTitle("Calculate", for: .normal)
        btnCalculate.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        btnCalculate.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        tfHourlyWage.inputAccessoryView = btnCalculate
        tfItemPrice.inputAccessoryView = btnCalculate
        
        lbResult.isHidden = true
        lbHours.isHidden = true
    }
    
    @objc func calculate(){
        if let wage = tfHourlyWage.text,let price = tfItemPrice.text {
            if let wageDouble = Double(wage), let priceDouble = Double(price) {
                
                view.endEditing(true) // dismiss the keyboard
                
                let noOfHours = Wage.getHours(forWage: wageDouble, forPrice:priceDouble)
                lbResult.text = "\(noOfHours)"
                if noOfHours <= 1 { lbHours.text = "hour" }
                else { lbHours.text = "hours" }
                
                lbResult.isHidden = false
                lbHours.isHidden = false
            }
        }
    }
    
    @IBAction func clearCalculator(_ sender: Any) {
        lbResult.isHidden = true
        lbHours.isHidden = true
        tfHourlyWage.text = ""
        tfItemPrice.text = ""
    }
}

