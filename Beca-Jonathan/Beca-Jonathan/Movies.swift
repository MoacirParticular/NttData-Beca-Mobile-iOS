//
//  Movies.swift
//  Beca-Jonathan
//
//  Created by Jonathan Pereira Almeida on 15/02/22.
//

import Foundation

struct Geral: Codable {
    let page: Int
    let results: [Atributos]
}

// MARK: - Result
struct Atributos: Codable {
    let overview: String
    let poster_path: String
    let title: String
    let vote_average: Double
}





