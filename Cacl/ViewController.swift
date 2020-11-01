import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    private var firstNumber : Double = 0
    private var secondNumber : Double = 0
    private var operand = ""
    private var calculatorText = "0"
    private var isNumber = false
    
    var displayValue: String {
        get {
            return display.text!
        }
        set {
            display.text = String(newValue)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @IBAction func touchDigit(_ sender: UIButton) {
        if isNumber {
            displayValue += sender.currentTitle!
        } else {
            displayValue = sender.currentTitle!
            isNumber = true
        }
    }
    
    @IBAction func operandTapped(_ sender: UIButton) {
        isNumber = false
        firstNumber = Double(displayValue)!
        self.operand = sender.currentTitle!
        displayValue = operand
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        isNumber = false
        var result : Double = 0
        secondNumber = Double(displayValue)!
        
        if operand == "+" {
            result = firstNumber + secondNumber
        } else if operand == "-" {
            result = firstNumber - secondNumber
        } else if operand == "×" {
            result = firstNumber * secondNumber
        } else if operand == "/" {
            result = firstNumber / secondNumber
        }
        
        displayValue = "\(result)"
    }
    
}
