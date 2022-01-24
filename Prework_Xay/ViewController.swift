//
//  ViewController.swift
//  Prework_Xay
//
//  Created by Xavier Hall on 1/21/22.
//

import UIKit

class ViewController: UIViewController {
    
@IBOutlet weak var billAmountTextField: UITextField!
@IBOutlet weak var tipAmountLabel: UILabel!
@IBOutlet weak var tipControl: UISegmentedControl!
@IBOutlet weak var totalLabel: UILabel!
@IBOutlet weak var PartysizeStepper: UIStepper!
@IBOutlet weak var PartysizeLabel: UILabel!
    
    //var defaults: Double
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tip Calculator"
        // Do any additional setup after loading the view.
        billAmountTextField.becomeFirstResponder()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
             }
    @IBAction func StepperCount(_ sender: Any) {
        let numpeople:Double = PartysizeStepper.value
        print(numpeople)
        PartysizeLabel.text = String(Int(numpeople))
            }
   
    @IBAction func calculateTip(_ sender: UISegmentedControl) {
        //let defaults = UserDefaults.standard
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.05,0.10,0.15,0.2,0.25,0.30]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        //let amountOfpeople: Double = defaults.object(forKey: "amountOfpeople") as! Double
        let test = Double(PartysizeLabel.text!)!
        //let amountOfpeople = Double(PartysizeLabel.text!) ?? 1
        let billWithTip = (bill + tip)
//        print("\(billWithTip) this is bill with tip")
        let total = billWithTip/test
//        print("\(total) this is total")
    
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total)

        }


    
}

