//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Alex Law on 2017-12-27.
//  Copyright © 2017 alex. All rights reserved.
//

import UIKit

@IBDesignable // gets the changes to show up on the interface builder
class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.6704054475, green: 0.6664217114, blue: 0.6734692454, alpha: 0.8011825771)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        // type of style for format
        formatter.numberStyle = .currency
        // where the current location is
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        // add this to the subview
        addSubview(currencyLbl)
    }
    
    // necessarry to call for interface buidler
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    // will run every time the app is loaded
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2)
        layer.cornerRadius = 5.0
        textAlignment = .center // centres the text
        clipsToBounds = true
        
        /*
         // initialization to allow us to implictly unwrap the literal before hand
         if placeholder == nil {
         placeholder = " "
         }
         */
        
        if let p = placeholder { // new refactored check
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
