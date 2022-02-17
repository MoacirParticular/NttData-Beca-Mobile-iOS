//
//  API.swift
//  Movies
//
//  Created by Nikolas Gianoglou Coelho on 14/02/22.
//

import Foundation
import Alamofire
import AlamofireImage

class API{
  //MARK: - Atributos
  static private let key = "192a23b23df6300c5d4931b5795ddd02"
  static private let urlAPI = "https://api.themoviedb.org/3/trending/movie/week?api_key=\(key)&language=pt-BR"
  static private var urlImage = "https://image.tmdb.org/t/p/w500"

  //MARK: - Chamada da API
  class func loadMovies(onComplete: @escaping (ResponseAPI?) -> Void){
      AF.request(urlAPI).responseJSON{ (response) in
        guard let data = response.data else {return}
        guard let movieInfo = try? JSONDecoder().decode(ResponseAPI.self, from: data)
        else{
          onComplete(nil)
          return
        }
      onComplete(movieInfo)
      }
  }
  
  
  class func loadImages(parcialURL: String, onComplete: @escaping (UIImage?) -> Void){
    let path = urlImage + parcialURL
    AF.request(path).responseImage{ response in
      if case .success(let image) = response.result {
          onComplete(image)
      }
    }
  }

}




  


