//
//  SecondViewController.swift
//  A Tabberific Assignment!
//
//  Created by Alle,Sai Teja on 2/11/16.
//  Copyright © 2016 Alle,Sai Teja. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {
    
    
    var mathTeacher:MathTeacher?


    @IBOutlet weak var secondHistoryTV: UITextView!
    
    
    //this function will call the mathteacher to display the history when the view appears
    override func viewWillAppear(_ animated: Bool) {
       
        secondHistoryTV.text = mathTeacher!.history
    }
    
    
    //this function will assign delegate to the mathTeacher object
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = (UIApplication.shared.delegate as! AppDelegate)
        mathTeacher = appDelegate.mathTeacher
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

