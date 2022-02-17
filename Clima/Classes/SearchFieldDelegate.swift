//
//  SearchFieldDelegate.swift
//  Clima
//
//  Created by Pedro Brandão on 17/02/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

protocol TextFieldReturnHandling {
    func textFieldReturnWasPressed(_ textField: UITextField)
}

class SearchFieldDelegate: NSObject {
    let delegate: TextFieldReturnHandling
    
    init(delegate: TextFieldReturnHandling) {
        self.delegate = delegate
    }
}

extension SearchFieldDelegate: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        delegate.textFieldReturnWasPressed(textField)
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.text = ""
        textField.placeholder = "Search"
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        }
        
        textField.placeholder = "You should type something"
        return false
    }
}
