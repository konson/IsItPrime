//
//  ViewController.swift
//  Is It Prime
//
//  Created by Alecsandra Konson on 8/31/17.
//  Copyright © 2017 Alecs Konson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func primeButton(_ sender: UIButton) {

        if let numberEntered = Int(textField.text!) {
            
            print("This is the number entered: \(numberEntered)")
           
            if isPrime(number: numberEntered) {
                answerLabel.text = "\(numberEntered) is a prime!"
            } else {
                answerLabel.text = "Sorry, \(numberEntered) is not a prime."
            }
        } else {
            answerLabel.text = "Please enter a positive whole number."
        }
        
    }
    
    func isPrime(number: Int) -> Bool {
        if number == 1 {
            return false
        }
        var i = 2
        while i < number {
            if number % i == 0 {
                return false
            } else {
                i += 1
            }
        }
        return true
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

