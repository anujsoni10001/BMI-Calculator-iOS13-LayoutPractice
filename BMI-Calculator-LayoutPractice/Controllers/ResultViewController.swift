//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Anuj Soni on 18/01/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//
import UIKit

class ResultViewController: UIViewController {

    var bmidata : String?
    var bmiadvice :String?
    var bmicolor :UIColor?
 
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var advice: UILabel!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        bmiLabel.text = bmidata
        advice.text = bmiadvice
        view.backgroundColor = bmicolor
    }
    @IBAction func recalculate(_ sender: UIButton) {
    self.dismiss(animated:false, completion: nil)
    }
}
