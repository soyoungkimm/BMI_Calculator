//
//  ViewController.swift
//  bmi_calculator
//
//  Created by 소프트웨어컴퓨터 on 2021/11/22.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var txtHeight: UITextField!
    
    @IBOutlet weak var txtWeight: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    
    @IBAction func btnCalcul(_ sender: UIButton) {
        if (txtHeight.text == "" || txtWeight.text == "") {
            lblResult.text = "키와 체중을 입력하세요"
        }
        else {
            let height = Double(txtHeight.text!)!
            let weight = Double(txtWeight.text!)!
            print(height, weight)
            let bmi = weight/(height*height*0.0001)
            let shortenedBmi = String(format: "%.1f", bmi)
            var body = ""

            switch bmi {
            case 0..<18.5:
                body = "저체중"
            case 18.5..<25 :
                body = "정상"
            case 25..<30 :
                body = "1단계 비만"
            case 30..<40 :
                body = "2단계 비만"
            default :
                body = "3단계 비만"
            }

            print("BMI:\(shortenedBmi), 판정:\(body)")
            lblResult.text = "결과  BMI:\(shortenedBmi), 판정:\(body)"
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

