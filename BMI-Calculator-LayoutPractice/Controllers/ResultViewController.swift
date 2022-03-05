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
        // Do any additional setup after loading the view.
        print("Result View did load()")
        bmiLabel.text=bmidata
    }
    @IBAction func recalculate(_ sender: UIButton) {
    self.dismiss(animated:false, completion: nil)
    }
}
