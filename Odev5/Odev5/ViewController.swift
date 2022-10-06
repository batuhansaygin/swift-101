//
//  ViewController.swift
//  Odev5
//
//  Created by Batuhan Saygin on 6.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calculatorWorkings: UILabel!
    
    @IBOutlet weak var calculatorResults: UILabel!
    
    @IBOutlet weak var allClearButton: UIButton!
    
    @IBOutlet weak var plusButton: UIButton!
    
    @IBOutlet weak var deleteButton: UIButton!
    
    @IBOutlet weak var percentButton: UIButton!
    
    @IBOutlet weak var divideButton: UIButton!
    
    @IBOutlet weak var multipleButton: UIButton!
    
    @IBOutlet weak var minusButton: UIButton!
    
    @IBOutlet weak var equalsButton: UIButton!
    
    var workings:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        /*
        allClearButton.layer.cornerRadius = allClearButton.frame.width / 2
        allClearButton.layer.masksToBounds = true
        plusButton.layer.cornerRadius = plusButton.frame.width / 2
        plusButton.layer.masksToBounds = true
        deleteButton.layer.cornerRadius = deleteButton.frame.width / 2
        deleteButton.layer.masksToBounds = true
        percentButton.layer.cornerRadius = percentButton.frame.width / 2
        percentButton.layer.masksToBounds = true
        divideButton.layer.cornerRadius = divideButton.frame.width / 2
        divideButton.layer.masksToBounds = true
        multipleButton.layer.cornerRadius = multipleButton.frame.width / 2
        multipleButton.layer.masksToBounds = true
        minusButton.layer.cornerRadius = minusButton.frame.width / 2
        minusButton.layer.masksToBounds = true
        equalsButton.layer.cornerRadius = equalsButton.frame.width / 2
        equalsButton.layer.masksToBounds = true
        */
    }
    
    func clearAll() {
        workings = ""
        calculatorWorkings.text = ""
        calculatorResults.text = "0"
    }
    
    func addToWorkings(value: String) {
        workings = workings + value
        calculatorWorkings.text = workings
    }
    
    func formatResult(result: Double) -> String {
        if (result.truncatingRemainder(dividingBy: 1) == 0) {
            return String(format: "%.0f", result)
        }
        else {
            return String(format: "%.2f", result)
        }
        
    }

    @IBAction func allClearButton(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        if (!workings.isEmpty)
        {
            workings.removeLast()
            calculatorWorkings.text = workings
        }
    }
    
    @IBAction func plusButton(_ sender: Any) {
        addToWorkings(value: "+")
    }
    
    @IBAction func equalsButton(_ sender: Any) {
        let expression = NSExpression(format: workings)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        calculatorResults.text = resultString
    }
    
    @IBAction func zeroButton(_ sender: Any) {
        addToWorkings(value: "0")
    }
    
    @IBAction func oneButton(_ sender: Any) {
        addToWorkings(value: "1")
    }
    
    @IBAction func twoButton(_ sender: Any) {
        addToWorkings(value: "2")
    }
    
    @IBAction func threeButton(_ sender: Any) {
        addToWorkings(value: "3")
    }
    
    @IBAction func fourButton(_ sender: Any) {
        addToWorkings(value: "4")
    }
    
    @IBAction func fiveButton(_ sender: Any) {
        addToWorkings(value: "5")
    }
    
    @IBAction func sixButton(_ sender: Any) {
        addToWorkings(value: "6")
    }
    
    @IBAction func sevenButton(_ sender: Any) {
        addToWorkings(value: "7")
    }
    
    @IBAction func eightButton(_ sender: Any) {
        addToWorkings(value: "8")
    }
    
    @IBAction func nineButton(_ sender: Any) {
        addToWorkings(value: "9")
    }
}

