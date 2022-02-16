//
//  ImagemTableViewCell.swift
//  Beca-Jonathan
//
//  Created by Jonathan Pereira Almeida on 16/02/22.
//

import UIKit

class ImagemTableViewCell: UITableViewCell {
    @IBOutlet weak var imagemView: UIImageView!
    
    
    
    func image (atributo: Atributos){
        API.buscaImagens(parciaImagem: atributo.poster_path) { (img) in
            if let imagem = img{
                self.imagemView.image = imagem
            }
        }

    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
