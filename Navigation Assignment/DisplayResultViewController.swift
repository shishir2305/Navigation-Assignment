//
//  DisplayResultViewController.swift
//  Navigation Assignment
//
//  Created by Promact on 12/02/24.
//

import UIKit

class DisplayResultViewController: UIViewController {

    var result : Int?
    
    @IBOutlet weak var displayResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let result = result {
            displayResultLabel.text = String(result)
        } else {
            displayResultLabel.text = ""
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
