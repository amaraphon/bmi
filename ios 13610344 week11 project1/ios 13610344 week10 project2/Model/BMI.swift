//
//  BMI.swift
//  ios 13610344 week10 project2
//
//  Created by Apple on 19/10/2562 BE.
//  Copyright © 2562 ictsilpskorn. All rights reserved.
//

//import Foundation

import UIKit

//struct ย่อมาจาก structure แปลว่า โครงสร้าง โครงกระดูก
//ใช้สำหรับการจัดกลุ่มข้อมูลเป็นชุดๆ ที่ใช้เหมือนๆกัน
struct BMI {
    let value  : Float      //ex. 22.22
    let advice : String     //คำแนะนำ ex. "กินน้อยลง"
    let color  : UIColor    //สีของ Background แยกสีเพื่อให้เห็นความต่าง เป็นชนิดUIColor
}
