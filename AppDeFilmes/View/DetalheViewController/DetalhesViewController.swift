//
//  DetalhesViewController.swift
//  AppDeFilmes
//
//  Created by Bruna Silva Borges on 14/02/22.
//

import UIKit

class DetalhesViewController: UIViewController {
    //MARK: - IBOutlets
    
    var pegaFilmes: Series!
    
    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var tituloFilme: UILabel!
    @IBOutlet weak var dataDeLancamento: UILabel!
    @IBOutlet weak var resumo: UILabel!
    @IBOutlet weak var idiomaFilme: UILabel!
    @IBOutlet weak var idDoFilme: UILabel!
    @IBOutlet weak var votosDoPovo: UILabel!
    
    //MARK: - View life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Infomacoes da tela de detahes
        tituloFilme.text = pegaFilmes.title
        dataDeLancamento.text = pegaFilmes.release_date
        resumo.text = pegaFilmes.overview
        idiomaFilme.text = "\(pegaFilmes.original_language)"
        idDoFilme.text = "\(pegaFilmes?.id ?? 0)"
        votosDoPovo.text = "\(pegaFilmes.vote_average)"

      
        //Pega imagens da api
        FilmesAPI.imagens(pegaFilmes.poster_path) { imagemPoster in
            if let imagemPoster = imagemPoster {
                self.poster.image = imagemPoster
            }
        }
    }
}
