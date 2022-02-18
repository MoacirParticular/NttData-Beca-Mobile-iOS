//
//  ClassesFilmes.swift
//  AppDeFilmes
//
//  Created by Bruna Silva Borges on 17/02/22.
//

import Foundation

struct Filmes: Codable {
    let page: Int
    let results: [Series]
    let total_pages: Int
    let total_results: Int
}

struct Series: Codable {
    
    let id: Int
    let overview: String
    let title: String
    let vote_average: Double
    let poster_path: String
    let release_date: String
    let original_language: OriginalLanguage
    
}

enum OriginalLanguage: String, Codable {
    case en = "en"
    case es = "es"
    case fr = "fr"
    case br = "br"
}
