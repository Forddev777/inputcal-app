//
//  CurrencyTxtField.swift
//  inputcal-app
//
//  Created by suriya taothongkom on 9/1/2565 BE.
//

import UIKit


@IBDesignable
class CurrencyTxtField: UITextField {
    
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView(){
        backgroundColor = .white
        layer.cornerRadius = 5.0
        textAlignment = .center
        if let p = placeholder {
        
        let  place = NSAttributedString(string: p,
                                       attributes: [.foregroundColor: UIColor.white ])
        attributedPlaceholder = place
        textColor = .white
        }
    }
    
    
    
    
    

}
