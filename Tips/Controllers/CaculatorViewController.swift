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
    @IBOutlet weak var currencyPicker: UIPickerView!
    
    
    var tip = 0
    var people = 2
    var result: Double = 0
    var currency = "₫"
    //Link: https://www.xe.com/symbols.php
    var data = ["₫","$","€","¥","₭","R$","£","лв","₩","лв","ден","₮","₱","₽"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currencyPicker.dataSource = self
        currencyPicker.delegate = self
    }
    
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
        
        tip = sender.tag
    }
    
    @IBAction func peopleChange(_ sender: UIStepper) {
        peopleLable.text = String(format: "%.0f", sender.value)
        people = Int(sender.value)
    }
    
    @IBAction func caculatorPressed(_ sender: UIButton) {
        let bill = Double(billTextField.text!) ?? 0.0
        let publicMoney = Double(publicMoneyTextField.text!) ?? 0.0
        let total = bill + bill*Double(tip)/100
        
        result = (total - publicMoney) / Double(people)
        
        self.performSegue(withIdentifier: "gotoResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultsViewController
        
        destinationVC.tipRS = tip
        destinationVC.peopleRS = people
        destinationVC.currencyRS = currency
        destinationVC.resultRS = result
    }
}

extension CaculatorViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
}

extension CaculatorViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        currency = data[row]
    }
}
