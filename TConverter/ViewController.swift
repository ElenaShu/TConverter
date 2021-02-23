//
//  ViewController.swift
//  TConverter
//
//  Created by Elenasshu on 03.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiumLabel: UILabel!
    @IBOutlet weak var faringateLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        celsiumLabel.text = "\(temperatureCelsius)ºC"
        let faringateTemperature = Int(round(( sender.value * 9 / 5 ) + 32))
        faringateLabel.text = "\(faringateTemperature)ºF"
    }
}

