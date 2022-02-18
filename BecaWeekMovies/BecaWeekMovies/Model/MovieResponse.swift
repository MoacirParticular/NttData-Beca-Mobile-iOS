//
//  MovieResponse.swift
//  BecaWeekMovies
//
//  Created by Kelly Silva Araujo on 17/02/22.
//

import Foundation

struct Informacoes: Codable {
    
    let page: Int
    let results: [Resultados]
    let total_pages: Int
    let total_results: Int
}

struct Resultados: Codable {
    
    let title: String
    let overview: String
    let poster_path: String
    let vote_average: Double
}
