//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//
import UIKit

class CalculateViewController: UIViewController {

    var calculator = CalculatorBrain()
   
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var heightS: UISlider!
    @IBOutlet weak var weightS: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        print("View Did Load()")
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        //print(String(format:"%.2f",sender.value))
        height.text = "\(String(format:"%.2f",sender.value))m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        //weight.text = "\(Int(round(sender.value)))"
        //weight.text = "\(Int(sender.value))"
        weight.text = "\(String(format:"%.0f",sender.value))Kg"
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        //print(heightS.value)
        //print(weightS.value)
        //print(weightS.value/(heightS.value*heightS.value))
      calculator.calculateBMI(height:heightS.value, weight:weightS.value)
    
        
//        let secondVC = SecondViewController()
//        secondVC.bmiValue = "\(String(format:"%.2f",bmi))"
//        self.present(secondVC, animated:true, completion:nil)
//
//          let resultview = ResultViewController()
//          resultview.bmidata = "\(bmi)"
//          print("Data \(bmi)")
        //calculator.bmi = bmi
        self.performSegue(withIdentifier:"Helloseague", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ResultViewController {
            vc.bmidata = calculator.getBMIValue()
            vc.bmiadvice = calculator.getBMIadvice()
            vc.bmicolor = calculator.getBMIcolor()
        }
    }
}




























