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
    @IBOutlet weak var publicMoneyTextField: UITextField!
    
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    
    @IBOutlet weak var peopleLable: UILabel!
    
    
    var tip: Double = 0
    var people:Int = 2
    var result: Double = 0
    
    
    
    @IBAction func tipsChanged(_ sender: UIButton) {
        
        //Hidding the keyboard
        billTextField.endEditing(true)
        publicMoneyTextField.endEditing(true)
        
        //The first: Unselected for all Button by .isSeclected = false
        fiveButton.isSelected = false
        tenButton.isSelected = false
        twentyButton.isSelected = false
        zeroButton.isSelected = false
        //The second: Show the selected button by sender.isSelected = true
        sender.isSelected = true
        
        tip = Double(sender.tag) / Double(100)
    }
    
    @IBAction func peopleChange(_ sender: UIStepper) {
        people = Int(sender.value + 1)
        peopleLable.text = String(format: "%.0f", people)
        print(people)
    }
    
    @IBAction func caculatorPressed(_ sender: UIButton) {
        let bill = Double(billTextField.text!) ?? 0.0
        let publicMoney = Double(publicMoneyTextField.text!) ?? 0.0
        let total = bill + bill*tip
        
        result = (total - publicMoney) / Double(people)
        
        self.performSegue(withIdentifier: "gotoResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultsViewController
        
        destinationVC.tipRS = Int(tip * 100)
        destinationVC.peopleRS = people
        destinationVC.resultRS = result
    }
}

