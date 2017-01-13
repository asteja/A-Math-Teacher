//
//  MathTeacher.swift
//  A Tabberific Assignment!
//
//  Created by Alle,Sai Teja on 2/11/16.
//  Copyright © 2016 Alle,Sai Teja. All rights reserved.
//

import Foundation

enum Operation:String {
    case addition = "+", substraction = "-"
}


class MathTeacher {
    
    var operand1:Int
    var operand2:Int
    var operation:Operation
    var history:String
    var maximumProblemSize:Int
    
    
    init () {
        self.operand1 = 1
        self.operand2 = 1
        self.operation = .addition
        self.history = ""
        self.maximumProblemSize = 10
    }
    
    
//    makeNewProblem() will populate the operands with random values between 0 and the
//    maximum number (inclusive). [Use random(), rather than arc4random().]

    func makeNewProblem() {
            operand1 = Int(arc4random())%maximumProblemSize+1
            operand2 = Int(arc4random())%maximumProblemSize+1
    }
    
//    answerIsCorrect() will check the answer, append a result to the history String, and return true
//    if the answer is correct, false otherwise.
//    
    func answerIsCorrect(_ answer:Int)->Bool {
        var computation:Int
        switch operation {
        case .addition : computation=operand1+operand2
        case .substraction : computation = operand1-operand2
        }
        
        if  computation == answer {
            history += "\(operand1) \(operation.rawValue) \(operand2) = \(answer),true"
            history += "\n"
            return true
            
        }
        else {
            history += "\(operand1) \(operation.rawValue) \(operand2) = \(answer),false"
            history += "\n"
            return false
        }

    }
    
}
