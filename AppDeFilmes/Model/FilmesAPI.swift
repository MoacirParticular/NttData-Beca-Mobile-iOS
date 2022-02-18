//
//  FilmesAPI.swift
//  AppDeFilmes
//
//  Created by Bruna Silva Borges on 14/02/22.
//
import UIKit
import Foundation
import SwiftHash
import Alamofire
import AlamofireImage


class FilmesAPI {
    
    static private let basePath = "https://api.themoviedb.org/3/trending/movie/week"
    static private let publicKey = "5ece71587b5350feefce83a43739de3f"
    static private let limit = 30


    class func loadFilmes(_ onComplete: @escaping (Filmes?) -> Void){

        let url = basePath + "?limit=\(limit)&" + getCredentials()
         print(url)
        AF.request(url).responseJSON() { (response) in
            guard let  data = response.data,
                  let filmes = try? JSONDecoder().decode(Filmes.self, from: data) else {
                      onComplete(nil)
                return
            }
          onComplete(filmes)
        }
    }

    // montando url 
    private class func getCredentials()-> String{
        return "api_key=\(publicKey)&language=pt-BR"
    }
    

    // Carregar imagem
    class func imagens(_ restoUrl: String, onComplete: @escaping (UIImage?) -> Void){
        let urlImagem = "https://image.tmdb.org/t/p/w500" + restoUrl
        AF.request(urlImagem).responseImage { response in
            

            if case.success(let image) = response.result {
                onComplete(image)
            }
        }
    }
}


