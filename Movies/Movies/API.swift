//
//  API.swift
//  Movies
//
//  Created by Nikolas Gianoglou Coelho on 14/02/22.
//

import Foundation
import Alamofire


class API{
  static private let key = "192a23b23df6300c5d4931b5795ddd02"
  static private let caminho = "https://api.themoviedb.org/3/trending/movie/week?api_key=\(key)&language=pt-BR"
  
  class func loadData(onComplete: @escaping ([Resultado]?) -> Void){
    let url = caminho
    
    Alamofire.request(url).responseJSON { (response) in
      guard let data = response.data,
            let result = try? JSONDecoder().decode([Resultado].self, from: data) else {return}
            onComplete(result)
      
    }
    
  }
  
  
  
}
