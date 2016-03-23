//
//  ViewController.swift
//  Age Of Laika
//
//  Created by Mark Rabins on 3/22/16.
//  Copyright © 2016 edu.self. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var enterHumanYearsTextField: UITextField!
    @IBOutlet weak var convertToDogYearsButton: UIButton!
    @IBOutlet weak var convertToHumanYearsButton: UIButton!
    @IBOutlet weak var imageOfLaika: UIImageView!
    @IBOutlet weak var ageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        enterHumanYearsTextField.placeholder = "Enter Human Years Here:"
        convertToDogYearsButton.setBackgroundImage(UIImage(named: "dogYearsButton"), forState: UIControlState.Normal)
        convertToHumanYearsButton.setBackgroundImage(UIImage(named: "realDogYearsButton"), forState: UIControlState.Normal)
        imageOfLaika.image = UIImage(named: "AgeOfLaika")
        view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        ageLabel.hidden = true
        enterHumanYearsTextField.keyboardType = UIKeyboardType.NumberPad
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        let stringFromTextField = enterHumanYearsTextField.text!
        let convertedAge = Int(stringFromTextField)! * 7
        
        ageLabel.text = "\(convertedAge) Dog Years"
        ageLabel.textAlignment = .Center
        ageLabel.hidden = false
        enterHumanYearsTextField.resignFirstResponder()

        
    }
    
    @IBAction func convertToRealDogYears(sender: UIButton) {
        
        let stringFromTextField = enterHumanYearsTextField.text!
        let covertedAge = Double(stringFromTextField)!
        
        var realDogYears:Double
        
        if covertedAge > 2 {
            realDogYears = (10.5 * 2) + (covertedAge - 2) * 4
        }
        else {
            realDogYears = covertedAge * 10.5
        }
        
        ageLabel.hidden = false
        ageLabel.textAlignment = .Center
        ageLabel.text = "\(realDogYears) Real Dog Years"

        enterHumanYearsTextField.resignFirstResponder()
        
    }


}

