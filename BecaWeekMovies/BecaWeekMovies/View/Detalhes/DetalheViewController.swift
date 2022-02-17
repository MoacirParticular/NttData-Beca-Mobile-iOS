//
//  DetalheViewController.swift
//  BecaWeekMovies
//
//  Created by Kelly Silva Araujo on 16/02/22.
//

import UIKit

class DetalheViewController: UIViewController {

    var carregaDetalhe: Resultados!
    

    // MARK: - IBOutlets
    
    @IBOutlet weak var tituloFilmeLabel: UILabel!
    @IBOutlet weak var ratingFilmeLabel: UILabel!
    @IBOutlet weak var sinopseFilmeLabel: UILabel!
    @IBOutlet weak var filmeImage: UIImageView!
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tituloFilmeLabel.text = carregaDetalhe.title
        ratingFilmeLabel.text = "\(carregaDetalhe.vote_average)"
        sinopseFilmeLabel.text = carregaDetalhe.overview
        
        API.capaDoFilme(carregaDetalhe.poster_path) { imagemDeCapa in
            if let imagemDeCapa = imagemDeCapa {
                self.filmeImage.image = imagemDeCapa
            }
        }
        
    }
    
    // MARK: - Actions
    
    @IBAction func botaoVoltar(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
