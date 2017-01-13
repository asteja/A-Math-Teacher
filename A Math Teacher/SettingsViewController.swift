//
//  SettingsViewController.swift
//  A Tabberific Assignment!
//
//  Created by Alle,Sai Teja on 2/12/16.
//  Copyright © 2016 Alle,Sai Teja. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITextFieldDelegate {
    
    var mathTeacher:MathTeacher?
    
    var operation:Operation!
    

    
    @IBOutlet weak var problemSizeLBL: UILabel!
    
    @IBOutlet weak var problemSizeTF: UITextField!
    
    @IBOutlet weak var operationLBL: UILabel!
    
    
    @IBOutlet weak var additionBTN: UIButton!
    
    
    @IBOutlet weak var substractionBTN: UIButton!
    
    
    
    //this method is called when the user presses enter and assign maximum 
    //problem size to it
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let userEnteredSize = Int(problemSizeTF.text!) {
            mathTeacher!.maximumProblemSize = userEnteredSize
            return true
        }
        else {
            displayAlertControllerWithTitle("OOPs,I asked size😝", message: "problem size is a number")
            return false
        }
    }
    
    
    
    //this function will makes the +/- button ito the grees color when it is tapped and also asign sthe operation to the operation in the math teacher
    @IBAction func additionBTN(_ sender: AnyObject) {
        additionBTN.backgroundColor = UIColor.green
        substractionBTN.backgroundColor = UIColor.white
        mathTeacher!.operation = .addition
    }
    
    //this function will makes the +/- button ito the grees color when it is tapped and also asign sthe operation to the operation in the math teacher

    @IBAction func substractionBTN(_ sender: AnyObject) {
        substractionBTN.backgroundColor = UIColor.green
        additionBTN.backgroundColor = UIColor.white
        mathTeacher!.operation = .substraction
    }
    
    
    
    
    
    //this function is used to display the error message when the user enters the maximum problem size as other than integer
    func displayAlertControllerWithTitle(_ title:String, message:String) {
        let uiAlertController:UIAlertController = UIAlertController(title: title,
                                                                    message: message, preferredStyle: UIAlertControllerStyle.alert)
        uiAlertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel,
            handler:{(action:UIAlertAction)->Void in }))
        self.present(uiAlertController, animated: true, completion: nil)
        
    }
   
    
    
    //this function assigns the delegate to the mathTeacher
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = (UIApplication.shared.delegate as! AppDelegate)
        mathTeacher = appDelegate.mathTeacher
        problemSizeTF.delegate = self
        problemSizeTF.layer.borderWidth = 1
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
