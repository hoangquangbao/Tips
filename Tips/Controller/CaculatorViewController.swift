//
//  ViewController.swift
//  Tips
//
//  Created by Boboli on 8/28/20.
//  Copyright © 2020 Boboli. All rights reserved.
//

import UIKit

class CaculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var supportingMoneyTextField: UITextField!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var splitsNumberLable: UILabel!
    
    var caculator:TipsBrain?
    
//    var billTotal:String?
//    var supportingMoney:String?
    var tipsPercent:Double = 0
    var peopleNumber:Double = 2
    
    
    @IBAction func tipsChanged(_ sender: UIButton) {
        
        //Hidding the keyboard
        billTextField.endEditing(true)
        supportingMoneyTextField.endEditing(true)
        
        //The first: Unselected for all Button by .isSeclected = false
        fiveButton.isSelected = false
        tenButton.isSelected = false
        twentyButton.isSelected = false
        zeroButton.isSelected = false
        //The second: Show the selected button by sender.isSelected = true
        sender.isSelected = true
        
        tipsPercent = Double(sender.tag/100)
    }
    
    @IBAction func splitValueChanged(_ sender: UIStepper) {
        
        peopleNumber = sender.value + 1
        splitsNumberLable.text = String(format: "%.0f", peopleNumber)
    }
    
    @IBAction func caculatorPressed(_ sender: UIButton) {
        
        let billTotal = Double(billTextField.text!) ?? 0
        let supportingMoney = Double(supportingMoneyTextField.text!) ?? 0
        
        let total = billTotal - supportingMoney
        let result: Double = (total + total*tipsPercent)/peopleNumber
        
        print(result)
    }
    
}
