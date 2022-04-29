//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit
import ClimaViews
import RxCocoa
import RxSwift

class WeatherViewController: UIViewController {
    private let bag = DisposeBag()
    
    @IBOutlet weak var conditionView: ConditionView!
    @IBOutlet weak var temperatureView: TemperatureView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchField: UITextField!
    @IBOutlet weak var locationButton: LocationButton!
    
    @IBAction func searchButtonAction(_ sender: UIButton) {
        searchField.resignFirstResponder()
        searchField.clearText()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSearchField()
    }
}

extension WeatherViewController {
    private func setupSearchField() {
        searchField.rx
            .controlEvent(.editingDidEnd)
            .subscribe(onNext: { [unowned self] in
                self.searchField.placeholder = "You should type something"
            }).disposed(by: bag)
        
        searchField.rx
            .controlEvent(.editingDidEndOnExit)
            .subscribe(onNext: {
                self.searchButtonAction(UIButton())
            })
            .disposed(by: bag)
    }
}

extension UITextField {
    func clearText() {
        self.text = ""
        self.placeholder = "Search"
    }
}
