//
//  FilmeTableViewCell.swift
//  BecaWeekMovies
//
//  Created by Kelly Silva Araujo on 16/02/22.
//

import UIKit

class FilmeTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    
    @IBOutlet weak var backgroundViewCell: UIView!
    @IBOutlet weak var filmeImage: UIImageView!

    func dados(_ posterDoFilme: Resultados) {
        API.capaDoFilme(posterDoFilme.poster_path) { poster in
            if let poster = poster {
                self.filmeImage.image = poster
            }
        }
    }
}
