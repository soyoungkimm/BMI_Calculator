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
            if view.backgroundColor ==  UIColor(displayP3Red: 1.0, green: 230/255, blue: 231/255, alpha: 1.0) {
                calculBmiWoman()
                
            }
            else {
                
                calculBmiMan()
            }
        }
        
    }
    
    
    func calculBmiWoman() {
        
        let height = Double(txtHeight.text!)!
        let weight = Double(txtWeight.text!)!
        print(height, weight)
        let bmi = weight/(height*height*0.0001)
        let shortenedBmi = String(format: "%.1f", bmi)
        var body = ""
        var color = UIColor.white
        
        switch bmi {
        case 0.0..<18.5:
            color = UIColor(displayP3Red: 0.0, green: 1.0, blue: 0.0, alpha:  1.0)
            body = "저체중"
        case 18.5..<25.0 :
            color = UIColor(displayP3Red: 0.0, green: 0.0, blue: 1.0, alpha:  1.0)
            body = "정상"
        case 25.0..<30.0 :
            color = UIColor(displayP3Red: 0.4, green: 0.0, blue: 0.0, alpha:  1.0)
            body = "1단계 비만"
        case 30.0..<40.0 :
            color = UIColor(displayP3Red: 0.7, green: 0.0, blue: 0.0, alpha:  1.0)
            body = "2단계 비만"
        default :
            color = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha:  1.0)
            body = "3단계 비만"
        }

        print("BMI:\(shortenedBmi), 판정:\(body)")
        lblResult.backgroundColor = color
        lblResult.clipsToBounds = true
        lblResult.layer.cornerRadius = 5
        lblResult.text = "BMI:\(shortenedBmi), 판정:\(body)"
    }
    
    
    func calculBmiMan() {
        
        let height = Double(txtHeight.text!)!
        let weight = Double(txtWeight.text!)!
        print(height, weight)
        let bmi = weight/(height*height*0.0001)
        let shortenedBmi = String(format: "%.1f", bmi)
        var body = ""
        var color = UIColor.white
        
        switch bmi {
        case 0.0..<20.0:
            color = UIColor(displayP3Red: 0.0, green: 1.0, blue: 0.0, alpha:  1.0)
            body = "저체중"
        case 20.0..<25.0 :
            color = UIColor(displayP3Red: 0.0, green: 0.0, blue: 1.0, alpha:  1.0)
            body = "정상"
        case 25.0..<30.0 :
            color = UIColor(displayP3Red: 0.4, green: 0.0, blue: 0.0, alpha:  1.0)
            body = "1단계 비만"
        case 30.0..<40.0 :
            color = UIColor(displayP3Red: 0.7, green: 0.0, blue: 0.0, alpha:  1.0)
            body = "2단계 비만"
        default :
            color = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha:  1.0)
            body = "3단계 비만"
        }

        print("BMI:\(shortenedBmi), 판정:\(body)")
        lblResult.backgroundColor = color
        lblResult.clipsToBounds = true
        lblResult.layer.cornerRadius = 5
        lblResult.text = "BMI:\(shortenedBmi), 판정:\(body)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func scMW(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            
            view.backgroundColor = UIColor(displayP3Red: 231/255, green: 248/255, blue: 254/255, alpha: 1.0)
            
        }
        else {
            
            view.backgroundColor =  UIColor(displayP3Red: 1.0, green: 230/255, blue: 231/255, alpha: 1.0)
            
        }
    }
    
}

