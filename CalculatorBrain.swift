//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Anuj Soni on 05/03/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit


struct CalculatorBrain{

var bmi:BMI?
    
func getBMIValue() -> String{
String(format:"%.2f",bmi?.value ?? 0.0)
}

func getBMIadvice() -> String{
bmi?.advice ?? "undefined"
}
    
func getBMIcolor() -> UIColor{
bmi?.color ?? UIColor.black
}
    
mutating func calculateBMI(height:Float,weight:Float){
let bmivalue = weight/pow(height,2)
let colors = (underwieght:#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1),healthy:#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1),overweight:#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))

if bmivalue < 18.5{
bmi = BMI(value:bmivalue,advice:"Eat more pies",color:colors.underwieght)
}else if bmivalue <= 24.9{
bmi = BMI(value:bmivalue,advice:"Fits as a fiddal",color:colors.healthy)
}else if bmivalue > 24.9{
bmi = BMI(value:bmivalue,advice:"Eat less pies",color:colors.overweight)
}else{
bmi = nil
}
}
}






