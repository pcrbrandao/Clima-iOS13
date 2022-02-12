//
//  MainViewController.swift
//  Clima
//
//  Created by Pedro Brandão on 12/02/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit
import ClimaControllers

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let bundle = Bundle.init(for: WeatherViewController.self)
        let sb = UIStoryboard.init(name: "ClimaMain", bundle: bundle)
        if let vc = sb.instantiateInitialViewController() {
            vc.modalPresentationStyle = .fullScreen
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
