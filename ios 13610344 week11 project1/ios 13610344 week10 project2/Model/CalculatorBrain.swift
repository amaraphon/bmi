//Kit แปลว่า = ชุดเครื่องมือ
//UI แปลว่า User Interface ส่วนที่เกี่ยวกับส่วนของผู้ใช้ เช่น ปุ่มกด เป็นต้น
import UIKit

//struct จะเป็นแบบ Pass by value คือ เหมือนcopy แยกกันคนละอัน แก้กับอันใดอันหนึ่งไม่มีผลกับอีกอัน
//class จะเป็นแบบ Pass by refference คือ เหมือนcopy แยกกันคนละอัน แก้กับอันใดอันหนึ่งจะมีผลกับอีกอัน
struct CalculatorBrain {
    
    //ไม่ใช้แล้วนะ เพราะใช้ bmiStruct แทน
    //var bmi : Float = 0.0   // 1 Value เก็บตัวเดียวนะ
    
    //เครื่องหมาย ? คือ เป็นตัวแปรชนิด Optional คือ ตัวเลือกจะมีค่าหรือไม่มีค่าก็เป็นไปได้
    //ดังนั้นมันอาจจะไม่มีค่าก็ได้
    var bmiStruct : BMI?    // 3 Value เก็บ 3 ตัว เป็นชุด ได้แก่ value, advice, color
    
    func getBMIValue() -> String {
        //let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        let bmiTo1DecimalPlace = String(format: "%.1f", bmiStruct?.value ?? 0.0)
        //ถ้ามีค่าก็เอาค่า value มาใช้ แต่ถ้าไม่มีก็เอา 0.0 มาใช้
        
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmiStruct?.advice ?? "No Advice"
        
        //if แบบย่อ ตัวแปรที่ต้องการดูว่ามีค่าหรือไม่ ?? ถ้าไม่มีค่าให้ใช้ค่าตรงนี้แทน
        //bmiStruct?.advice ?? "No Advice"
        //ตัวแปรที่ต้องการดูค่าว่ามีค่าหรือไม่ = bmiStruct.
    }
    
    func getColor() -> UIColor {
        return bmiStruct?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        //bmi ตัวที่ใช้นี้ไม่มี var หรือ let นำหน้า คือตัวที่เป็น Global var
        //ส่วน weight กับ height คือ ตัวที่ฟังก์ชันรับค่ามาในชื่อนั้นเป็น Local var
        //bmi = weight / (height * height)
        
        let bmiValueLocal = weight / (height * height)
        
        if bmiValueLocal < 18.5 {
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat more pies !", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValueLocal < 24.9 {
            bmiStruct = BMI(value: bmiValueLocal, advice: "Fit as a fiddle !", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat less pies !", color: #colorLiteral(red: 1, green: 0.6815885901, blue: 0.699100554, alpha: 1))
        }//end else
        
    }//end func calculateBMI
}//end struct CalculateBrain
