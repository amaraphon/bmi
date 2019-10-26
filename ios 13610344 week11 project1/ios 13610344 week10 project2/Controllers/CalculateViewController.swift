//
//  ViewController.swift
//  ios 13610344 week10 project2
//
//  Created by Apple on 19/10/2562 BE.
//  Copyright © 2562 ictsilpskorn. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    //Global variable คือ ตัวแปรตรงกลางที่ใช้ร่วมกันได้ใน Class ฟังก์ชันอื่นสามารถเรียกใช้ได้
//    var bmiValueCal = "0"
    
    //เรียกใช้ struct #1 ประกาศตัวแปรชนิด struct
    //calculatorBrain
    var calculatorBrain = CalculatorBrain()
    
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var sliderHeight: UISlider!
    @IBOutlet weak var sliderWeight: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderPressed(_ sender: UISlider) {
        print(sender.value)
        
//        print(String(format:"%.2f",sender.value))
        
        let height = String(format:"%.2f",sender.value)
        heightLabel.text = "\(height) M."
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        print(sender.value)
        
//        print(String(format:"%.2f",sender.value))
//        print(String(format:"%.0f",sender.value))
        
        let weight = String(format:"%.0f",sender.value)
        weightLabel.text = "\(weight) Kg."
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
        
        let heightFromUser = sliderHeight.value
        let weightFromUser = sliderWeight.value

        //Local Variable
//        let bmi = weight / (height * height)
//        print(bmi)
        
//        bmiValueCal = String(format: "%.1f", weight / (height * height) )
        
        //เรียกใช้ struct #2 เรียกฟังก์ชันของ struct โดยการส่งค่าที่ต้องการไป
        //calculatorBrain
        calculatorBrain.calculateBMI(height: heightFromUser, weight: weightFromUser)
        
        //self.performSegue(withIdentifier: "goToResult", sender: self)
        performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    @IBAction func heartPressed(_ sender: Any) {
        //self.performSegue(withIdentifier: "goToCredit", sender: self)
        performSegue(withIdentifier: "goToCredit", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            //destinationVC.bmiValue = bmiValueCal
            //ชื่อ object.ชื่อตัวแปร = ค่าที่ต้องการ set ให้
            
            //เรียกใช้ struct #3 เรียกใช้ function getBMIValue() ส่งกลับมาเป็น String ซึ่งเป็นชนิดเดียวกับที่ .bmiValue ต้องการ
            //รู้ว่าตัวเดียวกัน ด้วยชื่อ calculatorBrain
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice   = calculatorBrain.getAdvice()
            destinationVC.color    = calculatorBrain.getColor()
            
        }//end if prepare
        
        if segue.identifier == "goToCredit" {
            let CreditVC = segue.destination as! CreditViewController
            CreditVC.fullname = "Amaraphon S."
        }
        
    }//end function
    
}//end class

