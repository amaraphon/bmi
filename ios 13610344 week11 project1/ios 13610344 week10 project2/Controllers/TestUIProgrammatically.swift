//
//  TestUIProgrammatically.swift
//  ios 13610344 week10 project2
//
//  Created by Apple on 19/10/2562 BE.
//  Copyright © 2562 ictsilpskorn. All rights reserved.
//

import UIKit

class TestUIProgrammatically: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        let label = UILabel()
//        label.text = "bmiValue"
        label.text = bmiValue
        label.frame = CGRect(x: 200, y: 200, width: 100, height: 50)
        view.addSubview(label)
    }
}
