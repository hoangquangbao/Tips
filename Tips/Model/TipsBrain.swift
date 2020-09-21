//
//  TipsBrain.swift
//  Tips
//
//  Created by Boboli on 9/3/20.
//  Copyright © 2020 Boboli. All rights reserved.
//


struct TipsBrain {
    
    var tips: Tips?
    var finalValue:Double = 0
    
    
    mutating func getTipsPercent(_ tipsPercent: Int) {
        
        tips?.tipsPercent = Double(tipsPercent / 100)
    }
    
    mutating func getSplitPeople(_ peopleNumber: Double) {
        tips?.splitPeople = peopleNumber
    }
    
    mutating func getIntoMoney(_ billTotal: Double,_ supportingMoney: Double) {
        let total = billTotal - supportingMoney
        let tipsPercent = tips?.tipsPercent ?? 0.0
        let splitPeople = tips?.splitPeople ?? 0.0
        
        finalValue = ((total + total*tipsPercent)/splitPeople)
        tips?.intoMoney = finalValue
        // Giải quyết đc việc đưa giá trị vào thì mô hình MVC này là OK
        print(tips?.intoMoney)
    }
}
