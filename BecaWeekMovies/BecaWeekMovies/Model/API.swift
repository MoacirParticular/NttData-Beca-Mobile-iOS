//
//  API.swift
//  BecaWeekMovies
//
//  Created by Kelly Silva Araujo on 17/02/22.
//

import Foundation
import Alamofire
import AlamofireImage

class API {
    
    static private let baseUrl = "https://api.themoviedb.org/3/trending/movie/week"
    static private let chaveApi = "fc16acdf226bcf4b1ff22c17d420c190"
    
    
    class func carregandoFilmes(_ onComplete: @escaping (Informacoes?) -> Void) {
            
          let url = baseUrl + pegaCredenciais()
          print (url)
          AF.request(url).responseJSON() { (response) in
              guard let data = response.data, let filmes = try? JSONDecoder().decode(Informacoes.self, from: data) else {
                  onComplete(nil)
                  return
              }
              onComplete(filmes)
      }
    }
    
    private class func pegaCredenciais() -> String {
        return "api_key\(chaveApi)&language=pt-BR"
    }
    
}
