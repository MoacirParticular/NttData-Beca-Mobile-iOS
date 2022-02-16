//
//  API.swift
//  Beca-Jonathan
//
//  Created by Jonathan Pereira Almeida on 15/02/22.
//

import Foundation
import Alamofire
import AlamofireImage

class API {
    
    static private let chave = "fa4df2b57bc0d39ee64e18b8234e409b"
    static private let url = "https://api.themoviedb.org/3/trending/all/week?api_key=\(chave)&language=pt-BR"

    static private var urlImagem = "https://image.tmdb.org/t/p/w500"
    
    class func carregandoFilmes(onComplete: @escaping (Geral?) -> Void){
       AF.request(url).responseJSON { (response) in
        guard let data = response.data else { return }
        guard let movieInfo = try? JSONDecoder().decode(Geral.self, from: data)
        else {
            onComplete(nil)
            return
        }
        onComplete(movieInfo)
        
    }
}

//class func loadingimages(parcialURL: String , onComplete: @escaping (UIImage?) -> Void){
//    let path = urlImagem+parcialURL
//    AF.request(path).responseImage { response in
//        if case .sucess(let image) = response.result{
//            onComplete(image)
//        }
//    }
}
