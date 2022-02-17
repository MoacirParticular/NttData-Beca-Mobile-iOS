//
//  Filmes.swift
//  Movies
//
//  Created by Nikolas Gianoglou Coelho on 14/02/22.
//

import Foundation

// MARK: - ResponseAPI
struct ResponseAPI: Codable {
    let page: Int
    let results: [MovieDetails]
    let total_pages, total_results: Int
}

// MARK: - MovieDetails
struct MovieDetails: Codable {
    let overview: String
    let poster_path: String
    let title: String
    let vote_average: Double
}




