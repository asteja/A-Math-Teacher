//
//  FirstViewController.swift
//  A Tabberific Assignment!
//
//  Created by Alle,Sai Teja on 2/11/16.
//  Copyright © 2016 Alle,Sai Teja. All rights reserved.
//

import UIKit

class ProblemsViewController: UIViewController {
    
    
    @IBOutlet weak var operand1LBL: UILabel!
   
    @IBOutlet weak var operationLBL: UILabel!
    
    
    @IBOutlet weak var operand2LBL: UILabel!
    
    
    @IBOutlet weak var equalLBL: UILabel!
    
    
    
    @IBOutlet weak var answerTF: UITextField!
    
    
    @IBOutlet weak var checkAnswerBTN: UIButton!
    
    
    @IBOutlet weak var makeNewProblemBTN: UIButton!
    
    var mathTeacher:MathTeacher?

//    checkAnswer() will retrieve the value in the answer TextField (that the user has entered), and
//    will ask the math teacher if the answer is correct. It will display an alert controller using the code
//    shown below (don't worry how the method works, just copy, paste, and pass it an appropriate
//    title and message of your own (e.g., "Got it!", or "Nice try").
    
    @IBAction func checkAnswer(_ sender: AnyObject) {
        if let answer = Int(answerTF.text!) {
            if mathTeacher!.answerIsCorrect(answer) {
                displayAlertControllerWithTitle("Correct Answer😃", message: "Great Job")
            }
            else {
                displayAlertControllerWithTitle("Wrong Answer☝🏻", message: "Try & Try, Untill you succeed")
            }
        }
        else {
            
            displayAlertControllerWithTitle("Oh! Sorry😱", message: "Enter valid answer" )
            answerTF.text = ""
        }
    }
    
    

    
//    makeNewProblem() will tell the mathTeacher to make a new problem, and then populate the operands and operation UILabels.
    
    @IBAction func makeNewProblem(_ sender: AnyObject) {
        answerTF.text = ""
        mathTeacher!.makeNewProblem()
        operand1LBL.text = String(mathTeacher!.operand1)
        operand2LBL.text = String(mathTeacher!.operand2)
        operationLBL.text = String(mathTeacher!.operation.rawValue)
        
        
    }
    
    
    func displayAlertControllerWithTitle(_ title:String, message:String) {
        let uiAlertController:UIAlertController = UIAlertController(title: title,
            message: message, preferredStyle: UIAlertControllerStyle.alert)
        uiAlertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel,
            handler:{(action:UIAlertAction)->Void in }))
        self.present(uiAlertController, animated: true, completion: nil)
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = (UIApplication.shared.delegate as! AppDelegate)
        mathTeacher = appDelegate.mathTeacher
        
        answerTF.layer.borderWidth = 1
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

