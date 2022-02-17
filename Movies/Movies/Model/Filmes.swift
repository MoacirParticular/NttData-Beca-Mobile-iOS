//
//  Filmes.swift
//  Movies
//
//  Created by Nikolas Gianoglou Coelho on 14/02/22.
//

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let page: Int
    let results: [Result]
    let total_pages, total_results: Int
}

// MARK: - Result
struct Result: Codable {
    let overview: String
    let poster_path: String
    let title: String
    let vote_average: Double
}




