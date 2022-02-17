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
  static private let key = "192a23b23df6300c5d4931b5795ddd02"
  static private let caminho = "https://api.themoviedb.org/3/trending/movie/week?api_key=192a23b23df6300c5d4931b5795ddd02&language=pt-BR"
  
  static private var urlImagem = "https://image.tmdb.org/t/p/w500"

  class func loadMovies(onComplete: @escaping (Welcome?) -> Void){
      AF.request(caminho).responseJSON{ (response) in
      guard let data = response.data else {return}
      guard let movieInfo = try? JSONDecoder().decode(Welcome.self, from: data)
      else{
        onComplete(nil)
        return
      }
      onComplete(movieInfo)
    }
    
  }
  
  
  class func loadImages(parcialURL: String, onComplete: @escaping (UIImage?) -> Void){
    let path = urlImagem+parcialURL
    AF.request(path).responseImage{ response in
      if case .success(let image) = response.result {
          onComplete(image)
      }
    }
  }
  
  
  
  
  
  
//  class func teste(){
//  AF.request("https://httpbin.org/image/png").responseImage { response in
//    debugPrint(response)
//
//    print(response.request)
//    print(response.response)
//    debugPrint(response.result)
//
//    if case .success(let image) = response.result {
//      print("image downloaded: \(image)")
//    }
//  }
//}

}




  


