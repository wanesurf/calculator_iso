//
//  ViewController.swift
//  calculator
//
//  Created by Helwan Mandé on 2020-08-16.
//  Copyright © 2020 Helwan Mandé. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    var performingMath:Bool = false
    var numberOnScreeen:Double = 0;
    var result:Double?
    var operation:String?
    var lastNumber:String = ""
    @IBOutlet weak var label: UILabel!
    
    
    //Interacting with numbers
    @IBAction func numbers(_ sender: UIButton) {
        
        label.text = label.text! + String(sender.tag-1)
        
        if (performingMath == false){
        self.numberOnScreeen = Double(label.text!)!
        }
        
        self.lastNumber = String(lastNumber)+String(sender.tag-1)
    }
    
    
    @IBAction func minus(_ sender: UIButton) {
        
        label.text = "-"
        operation = "-"
        performingMath = true
        lastNumber = ""
    }
    
  
    @IBAction func plus(_ sender: UIButton) {
        
        label.text = "+"
        operation = "+"
        performingMath = true
        lastNumber = ""
    }
    
    
    @IBAction func divide(_ sender: UIButton) {
        
        label.text = "/"
        operation = "/"
        performingMath = true
        lastNumber = ""
    }
    
    //Interacting with *
    @IBAction func multiply(_ sender: UIButton) {
        
        label.text = "x"
        operation = "x"
        performingMath = true
        lastNumber = ""
        
      
        
    }
    
    ////Interacting with equals
    @IBAction func equals(_ sender: UIButton) {
        
        switch operation {
        case "x":
            result = Double(lastNumber)!*numberOnScreeen
        case "+":
            result = Double(lastNumber)!+numberOnScreeen
        case "-":
            result=Double(lastNumber)!-numberOnScreeen
        case "/":
            result=Double(lastNumber)!/numberOnScreeen
        default:result = 0
            
        }
        
        label.text = String(result!)
        performingMath = false
        
    }
    
    
    
    @IBAction func clear(_ sender: UIButton) {
        numberOnScreeen = 0
        lastNumber = ""
        operation=""
        label.text=""
        
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

