//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"




enum Operation:String {
    case addition = "+",substraction = "-"
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
        self.maximumProblemSize = 0
    }
    
    
    convenience init(operation:Operation,maximumProblemSize:Int) {
        self.init()
        self.operation = operation
        self.maximumProblemSize = maximumProblemSize
    }
    //    makeNewProblem() will populate the operands with random values between 0 and the
    //    maximum number (inclusive). [Use random(), rather than arc4random().]
    
    func makeNewProblem() {
        
        
        operand1 = Int(arc4random())%10
        operand2 = Int(arc4random())%10
    }
    
    //    answerIsCorrect() will check the answer, append a result to the history String, and return true
    //    if the answer is correct, false otherwise.
    //
    func answerIsCorrect( answer:Int)->Bool {
        var computation:Int
        switch operation {
        case .addition : computation=operand1+operand2
        case .substraction : computation = operand1-operand2
        }
        
        if  computation == answer {
            history += "\(operand1) \(operation) \(operand2),true"
            return true
        }
        else {
            history += "\(operand1) \(operation) \(operand2),false"
            return false
        }
        
    }
    
}

