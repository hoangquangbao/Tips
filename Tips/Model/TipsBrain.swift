//
//  TipsBrain.swift
//  Tips
//
//  Created by Boboli on 9/3/20.
//  Copyright © 2020 Boboli. All rights reserved.
//


struct TipsBrain {
    
    var tips:Tips?
    var finalValue:Double = 0
    
    
    mutating func getTipsPercent(_ tipsPercent:Int) {
        
        tips?.tipsPercent = Double(tipsPercent / 100)
    }
    
    mutating func getSplitPeople(_ peopleNumber: Double) {
        tips?.splitPeople = peopleNumber
    }
    
    mutating func getIntoMoney(_ billTotal: Double,_ supportingMoney: Double) {
        let total = billTotal - supportingMoney
        finalValue = ((total + (total*tips!.tipsPercent))/tips!.splitPeople)
        tips?.intoMoney = finalValue
    }
    //Lấy đc giá trị Tip
}
