//
//  ResultsViewController.swift
//  Tips
//
//  Created by Boboli on 9/4/20.
//  Copyright © 2020 Boboli. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var tipRS = 0
    var peopleRS = 2
    var resultRS = 0.0
    
    @IBOutlet weak var notesLable: UILabel!
    @IBOutlet weak var resultLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (resultRS > 0) {
            resultLable.text = String(format: "%.0f", resultRS)
            notesLable.text = "Split between \(peopleRS) peoples with \(tipRS)% tips"
        } else {
            resultLable.text = "No Pay!"
            notesLable.text = "Split between \(peopleRS) peoples with \(tipRS)% tips"
        }
    }
    
    @IBAction func recaculatorPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
