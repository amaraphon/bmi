//
//  CreditViewController.swift
//  ios 13610344 week10 project2
//
//  Created by Apple on 19/10/2562 BE.
//  Copyright © 2562 ictsilpskorn. All rights reserved.
//

import UIKit

class CreditViewController: UIViewController {

    var fullname = "Fullname"
    
    @IBOutlet weak var fullnameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullnameLabel.text = fullname
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
