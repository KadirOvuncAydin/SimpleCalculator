//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Kadir Övünç Aydın on 11.12.2019.
//  Copyright © 2019 Kadir Övünç Aydın. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number1TextField: UITextField!
    @IBOutlet weak var number2TextField: UITextField!
    @IBOutlet weak var labelSonuc: UILabel!
    var firstNumber : Int = 0
    var secondNumber : Int = 0
    
    @IBAction func sumButton(_ sender: Any) {
        firstNumber = Int(number1TextField.text ?? "") ?? 0
        secondNumber = Int(number2TextField.text ?? "") ?? 0
        labelSonuc.text = String(firstNumber + secondNumber)
        
        }
    
    @IBAction func subtractButton(_ sender: Any) {
// let sayi1 = Int(number1TextField.text!)!
        firstNumber = Int(number1TextField.text ?? "") ?? 0
        secondNumber = Int(number2TextField.text ?? "") ?? 0
        labelSonuc.text = String(firstNumber - secondNumber)
        
//**************************** Başka bir kullanım şekli
//        if let firstNumber = Int(number1TextField.text!){
//            if let secondNumber = Int(number2TextField.text!){
//                let result = firstNumber - secondNumber
//                labelSonuc.text = String(result)
//            }
//        }
//**************************** Başka bir kullanım şekli
        
// ?? kullanıldığında değer gelebilir, gelmezse tırnak içerisindeki değeri kullan diyoruz.
// ! kullandığımızda değişkenin içine veri geleceğini kesinleştiriyoruz.
// Int(number1TextField.text!)! buradaki ilk ünlem textField içerisine veri geleceğini,
// ikinci ünlem ise oluşturduğumuz Int içerisine veri geleceğini belirtmek için. Bu kullanımda eğer textField içerisine bir veri gelmezse program hataya düşer. O yüzden ?? kullanımı daha doğru.
    }
    
    @IBAction func divideButton(_ sender: Any) {
        firstNumber = Int(number1TextField.text ?? "") ?? 0
        secondNumber = Int(number2TextField.text ?? "") ?? 0
        labelSonuc.text = String(firstNumber / secondNumber)
    }
    
    
    @IBAction func multiplyButton(_ sender: Any) {
        firstNumber = Int(number1TextField.text ?? "") ?? 0
        secondNumber = Int(number2TextField.text ?? "") ?? 0
        labelSonuc.text = String(firstNumber * secondNumber)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

