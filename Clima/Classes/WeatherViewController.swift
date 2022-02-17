//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit
import ClimaViews

class WeatherViewController: UIViewController {

    @IBOutlet weak var conditionView: ConditionView!
    @IBOutlet weak var temperatureView: TemperatureView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchField: UITextField!
    @IBOutlet weak var locationButton: LocationButton!
    
    @IBAction func searchButtonAction(_ sender: UIButton) {
        textFieldReturnWasPressed(searchField)
    }
    
    var searchFieldDelegate: SearchFieldDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.searchFieldDelegate = SearchFieldDelegate(delegate: self)
        searchField.delegate = searchFieldDelegate
    }
}

extension WeatherViewController: TextFieldReturnHandling {
    func textFieldReturnWasPressed(_ textField: UITextField) {
        textField.endEditing(true)
    }
}
