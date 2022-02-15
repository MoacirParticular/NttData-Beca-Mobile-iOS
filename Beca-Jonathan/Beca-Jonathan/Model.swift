//
//  Model.swift
//  Beca-Jonathan
//
//  Created by Jonathan Pereira Almeida on 15/02/22.
//

import Foundation

struct Movie: Codable {
    
    var id , title : String?
    var year : Int?
    
}

func decode(json:Data){
        
    if let movie = try? JSONDecoder().decode(Movie.self , from: json){
        
        print(movie.title)
    }
    
}






let json = try? JSONSerialization.jsonObject(with: data, options: [] )

var newMovie = Movie()

if let movie = json as? [String:Any] {

    if let title = movie["title"] as? String {
        newMovie.title = title
    }

    if let year = movie["year"] as? Int{
        newMovie.year = year
    }
}
