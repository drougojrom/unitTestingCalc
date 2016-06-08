//
//  ViewController.swift
//  testCalc
//
//  Created by Roman Ustiantcev on 08/06/16.
//  Copyright © 2016 Roman Ustiantcev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var numberSlider: UISlider!
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var percentageSlider: UISlider!
    @IBOutlet weak var percentageLabel: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func numberValueChanged(sender: UISlider) {
        
        numberSlider.setValue(Float(Int(numberSlider.value)), animated: true)
        
        let r = percentage(numberSlider.value, percentageSlider.value)
        updateLabels(numberSlider.value, nil, r)
    }
    
    @IBAction func percentageValueChanged(sender: UISlider) {
        
        percentageSlider.setValue(Float(Int(percentageSlider.value)), animated: true)
        let r = percentage(numberSlider.value, percentageSlider.value)
        updateLabels(nil, percentageSlider.value, r)
    }

    func percentage(value: Float, _ percentage: Float) -> Float {
        return value * (percentage / 100)
    }
    
    func updateLabels(nV: Float?, _ pV: Float?, _ rV: Float) {
        if let v = nV {
            self.numberLabel.text = "\(v)"
        }
        if let v = pV {
            self.percentageLabel.text = "\(v)%"
        }
        
        self.resultLabel.text = "\(rV + 10)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

