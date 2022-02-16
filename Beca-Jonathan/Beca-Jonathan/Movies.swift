//
//  Movies.swift
//  Beca-Jonathan
//
//  Created by Jonathan Pereira Almeida on 15/02/22.
//

import Foundation

//struct welcome: Codable {
//
//    let page: Int
//    let results: [Result]
//    let total_pages, total_results: Int
//}
//
//struct Result: Codable {
//
//    let overview : String
//    let poster_path : String
//    let title : String
//    let vote_average : Double
//
//
//}

struct Geral: Codable {
    let page: Int
    let results: [Atributos]

}

// MARK: - Result
struct Atributos: Codable {
    let poster_path: String
    let vote_average: Double
    let overview: String
    let title: String?
}





