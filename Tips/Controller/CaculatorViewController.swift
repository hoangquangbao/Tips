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
    
    var billTotal:Float?
    var supportingMoney:Float?
    
    
    @IBAction func tipsChanged(_ sender: UIButton) {
    }
    @IBAction func splitChanged(_ sender: UIStepper) {
    }
    @IBAction func caculatorPressed(_ sender: UIButton) {
    }
    
}

