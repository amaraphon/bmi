//
//  ResultViewController.swift
//  ios 13610344 week10 project2
//
//  Created by Apple on 19/10/2562 BE.
//  Copyright © 2562 ictsilpskorn. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    //Properties
    var bmiValue : String?
    var advice   : String?
    var color    : UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
