//
//  ViewController.swift
//  inputcal-app
//
//  Created by suriya taothongkom on 9/1/2565 BE.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var wageTxt: UITextField!
    @IBOutlet weak var priceTxt: UITextField!
    
    @IBOutlet weak var ResultBl: UILabel!
    @IBOutlet weak var HoursBl: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let Btn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width , height: 60))
        
        Btn.backgroundColor = .orange
        Btn.setTitle("Calculate", for: .normal)
        Btn.setTitleColor(.white, for: .normal)
        Btn.addTarget(self, action: #selector(ViewController.calculator), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = Btn
        priceTxt.inputAccessoryView = Btn
        
        ResultBl.isHidden = true
        HoursBl.isHidden = true
        
    }
    
    @objc func calculator(){
        if let wageTxt = wageTxt.text , let priceTxt =  priceTxt.text {
            
            if let wage = Double(wageTxt) , let price = Double(priceTxt){
                view.endEditing(true)
                ResultBl.isHidden = false
                HoursBl.isHidden = false
                ResultBl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    @IBAction func Clear(_ sender: Any) {
        
        ResultBl.isHidden = true
        HoursBl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
        
    }
    
}

