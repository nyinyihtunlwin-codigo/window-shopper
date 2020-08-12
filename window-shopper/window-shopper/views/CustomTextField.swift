//
//  CustomTextField.swift
//  window-shopper
//
//  Created by Administrator on 8/10/20.
//  Copyright © 2020 Nyi Nyi Htun Lwin. All rights reserved.
//

import UIKit


// @IBDesignable is to show custom view in StoryBoard without running
@IBDesignable
class CustomTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        // don't implement this func if not needed ( performance issue can cause )
        let size : CGFloat = 20
        let lbCurrency = UILabel(frame : CGRect(x: 5, y: ( frame.size.height / 2) - (size / 2), width: size, height: size))
        
        lbCurrency.backgroundColor = #colorLiteral(red: 0.6142391689, green: 0.665050171, blue: 0.7388659357, alpha: 0.8024400685)
        lbCurrency.textAlignment = .center
        lbCurrency.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        lbCurrency.layer.cornerRadius = 5.0
        lbCurrency.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        lbCurrency.text = formatter.currencySymbol
        
        addSubview(lbCurrency)
    }
    
    // this override func is for @IBDesignable
    override func prepareForInterfaceBuilder() {
        customizeViews()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
       customizeViews()
    }
    
    private func customizeViews(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.244140625)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
