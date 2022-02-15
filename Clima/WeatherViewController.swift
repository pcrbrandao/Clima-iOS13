//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit
import ClimaViews

public class WeatherViewController: UIViewController {

    @IBOutlet weak var conditionView: ConditionView!
    @IBOutlet weak var temperatureView: TemperatureView!
    @IBOutlet weak var cityLabel: UILabel!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

