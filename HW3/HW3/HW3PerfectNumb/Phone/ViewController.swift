//
//  ViewController.swift
//  Phone
//
//  Created by Bob on 1/29/17.
//  Copyright © 2017 CWRU iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number = ""
    var firstNumber: Int! = -1
    var secondNumber: Int! = -1

    
    @IBOutlet weak var numberDisplay: UITextField!
    
    @IBOutlet weak var Calling: UITextField!
    @IBOutlet weak var Header: UITextField!
    @IBOutlet weak var buttonEnd: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberDisplay.textAlignment = NSTextAlignment.right;
        firstNumber = -2
        secondNumber = -2
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func perfectCheck() {
        var result = ""
        print(secondNumber)
        print(firstNumber)
        if firstNumber != -2, secondNumber != -2{
        print("Inside")
        while firstNumber! <= secondNumber!{
            var sum = 0
            var i = 1
            while i <= firstNumber! / 2{
                if firstNumber! % i == 0{
                    sum = sum + i
                }

                i = i + 1
                
            }
            if sum == firstNumber{
                result = result + String(firstNumber!) + " "
            }
            firstNumber = firstNumber! + 1
        }
        }
        Calling.text = result
    }

    //MARK: Actions
    @IBAction func button1(_ sender: UIButton) {
        number = number + "1"
        numberDisplay.text = number
        
    }
    
    @IBAction func button2(_ sender: UIButton) {
        number = number + "2"
        numberDisplay.text = number
        

    }
    
    @IBAction func button3(_ sender: UIButton) {
        number = number + "3"
        numberDisplay.text = number
        

    }
    
    @IBAction func button4(_ sender: UIButton) {
        number = number + "4"
        numberDisplay.text = number
        

    }
    
    @IBAction func button5(_ sender: UIButton) {
        number = number + "5"
        numberDisplay.text = number
        

    }
    
    @IBAction func button6(_ sender: UIButton) {
        number = number + "6"
        numberDisplay.text = number
        

    }
    
    @IBAction func button7(_ sender: UIButton) {
        number = number + "7"
        numberDisplay.text = number
        

    }
    
    @IBAction func button8(_ sender: UIButton) {
        number = number + "8"
        numberDisplay.text = number
        

    }
    @IBAction func button9(_ sender: UIButton) {
        number = number + "9"
        numberDisplay.text = number
        

    }
    @IBAction func button0(_ sender: UIButton) {
        number = number + "0"
        numberDisplay.text = number
        

    }

    @IBAction func buttonBack(_ sender: UIButton) {
        if number == ""{
            
        }
        else{
         number = number.substring(to: number.index(before: number.endIndex))
         numberDisplay.text = number
        }
    }

    @IBAction func buttonEnd(_ sender: UIButton) {
        Calling.text = ""
        firstNumber = Int(number)
        number = ""
        numberDisplay.text = number
        perfectCheck()
}
    @IBAction func buttonDial(_ sender: UIButton) {
        Calling.text = ""
        secondNumber = Int(number)

        number = ""
        numberDisplay.text = number
        perfectCheck()
    }

}
