//
//  CalculationViewController.swift
//  Navigation Assignment
//
//  Created by Promact on 12/02/24.
//

import UIKit

class CalculationViewController: UIViewController {

    @IBOutlet weak var firstNumber: UITextField!
    
    @IBOutlet weak var secondNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func multiply () -> Int {
        var num1 = 0
        var num2 = 0
        
        if let temp1 = firstNumber.text {
            num1 = Int(temp1) ?? 0
        }
        
        if let temp2 = secondNumber.text {
            num2 = Int(temp2) ?? 0
        }
        
        return num1 * num2
    }
    
    
    @IBAction func calculateResult(_ sender: Any) {
        let result = multiply()
        
        performSegue(withIdentifier: "ToDisplayResultViewController", sender: result)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! DisplayResultViewController
        
        if let result = sender as? Int {
                    destVC.result = result
        }
    }
}
