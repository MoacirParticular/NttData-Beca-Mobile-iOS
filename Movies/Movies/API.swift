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
  static private let caminho = "https://api.themoviedb.org/3/trending/movie/week?api_key=192a23b23df6300c5d4931b5795ddd02&language=pt-BR"
  

  class func loadMovies(onComplete: @escaping (Welcome?) -> Void){
   
    Alamofire.request(caminho).responseJSON{ (response) in
      
      //guard let data = response.result.value else {return}
      guard let data = response.data else {return}
      guard let movieInfo = try? JSONDecoder().decode(Welcome.self, from: data)
      else{
        onComplete(nil)
        return
      }
      onComplete(movieInfo)
      
    }
    
  }
  

}




  


