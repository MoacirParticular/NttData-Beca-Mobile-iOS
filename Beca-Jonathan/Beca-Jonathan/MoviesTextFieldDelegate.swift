//
//  MoviesTextFieldDelegate.swift
//  Beca-Jonathan
//
//  Created by Jonathan Pereira Almeida on 15/02/22.
//

import UIKit

extension MoviesViewController : UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> bool {
        
        searchButtonTouched(UIButton())
        return false
    }
    
}
