//
//  ViewController.swift
//  SwiftScorekeeper
//
//  Created by Garrett Barker on 9/6/17.
//  Copyright © 2017 Garrett Barker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var team1LBL: UILabel!
    @IBOutlet var team2LBL: UILabel!
    @IBOutlet var team1TF: UITextField!
    @IBOutlet var team2TF: UITextField!
    
    @IBOutlet var team2Stepper: UIStepper!
    @IBOutlet var team1Stepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        
        tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    @IBAction func team1Stepper(_ sender: Any) {
        team1LBL.text = String(format: "%.0f",team1Stepper.value);
    }
    

    @IBAction func team2Stepper(_ sender: Any) {
        team2LBL.text = String(format: "%.0f",team2Stepper.value);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func resetBTN(_ sender: Any) {
        //team1TF.text = "Team 1"
        //team2TF.text = "Team 2"
        
        team1LBL.text = "0"
        team2LBL.text = "0"
        
        team1Stepper.value = 0
        team2Stepper.value = 0
    }

}

