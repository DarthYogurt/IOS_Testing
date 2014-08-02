//
//  TipCalculatorModel.swift
//  TipCalculator
//
//  Created by Raymond Walintukan on 8/1/14.
//  Copyright (c) 2014 Raymond Walintukan. All rights reserved.
//

import Foundation

class TipCalculatorModel{
    
    var total: Double
    var taxPct: Double
    var subtotal: Double{
        get{
            return total / (taxPct + 1)
        }
    }
    
    init(total:Double, taxPct:Double){		
        self.total = total
        self.taxPct = taxPct
    }
    
    func calcTipWithTipPct(tipPct:Double) -> Double {
        return subtotal * tipPct
    }
    
    func printPossibleTips() {
        
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit: [Double] = [0.15, 0.18, 0.20]
        
        for possibleTip in possibleTipsInferred {
            println("\(possibleTip*100)%: \(calcTipWithTipPct(possibleTip))")
        }
    }
    
    func returnPossibleTips() -> [Int: Double]{
        
        let possibleTipsInFerred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit: [Double] = [0.15, 0.18, 0.20]
        
        var retval = Dictionary<Int, Double>()
        for possibleTip in possibleTipsInFerred{
            let intPct = Int(possibleTip*100)
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
    }
}
