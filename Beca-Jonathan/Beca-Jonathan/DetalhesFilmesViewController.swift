//
//  detalhesFilmesViewController.swift
//  Beca-Jonathan
//
//  Created by Jonathan Pereira Almeida on 16/02/22.
//

import UIKit

class DetalhesFilmesViewController: UIViewController {
    
    var atributos:Atributos!
    
    
    @IBOutlet weak var imagemDetalhe: UIImageView!
    
    @IBOutlet weak var tituloDetalhe: UILabel!
    
    @IBOutlet weak var sinopseDetalhe: UILabel!
    
    @IBOutlet weak var notaDetalhe: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tituloDetalhe.text = atributos.title
        sinopseDetalhe.text = atributos.overview
        notaDetalhe.text = String(atributos.vote_average)
        API.buscaImagens(parciaImagem: atributos.poster_path) { (imagem) in
            if let imagem = imagem{
                self.imagemDetalhe.image = imagem
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
