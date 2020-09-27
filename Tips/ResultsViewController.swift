//
//  ResultsViewController.swift
//  Tips
//
//  Created by Boboli on 9/4/20.
//  Copyright © 2020 Boboli. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var tipsPercentRes = 10
    var peopleNumberRes = 2
    var resultRes = 0.0
    
    @IBOutlet weak var notesLable: UILabel!
    @IBOutlet weak var resultTipsLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultTipsLable.text = String(format: "%.0f", resultRes)
        notesLable.text = "Split between \(peopleNumberRes) peoples with \(tipsPercentRes)% tips"
    }
    
    @IBAction func recaculatorPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
