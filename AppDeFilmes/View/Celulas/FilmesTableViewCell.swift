//
//  FilmesTableViewCell.swift
//  AppDeFilmes
//
//  Created by Bruna Silva Borges on 14/02/22.
//

import UIKit


class FilmesTableViewCell: UITableViewCell {
    
    //MARK: - IBOutlets

    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var imegeView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    // Configuracao para transicao animada da page 1 para a page 2
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    // Informações da tela inicial do app
    
    func dados(_ titulo: Series ){
        tituloLabel.text = titulo.title
        FilmesAPI.imagens(titulo.poster_path) { imagemFilme in
            if let imagemFilme = imagemFilme {
                self.imegeView.image = imagemFilme
            }
        }
    }
}
