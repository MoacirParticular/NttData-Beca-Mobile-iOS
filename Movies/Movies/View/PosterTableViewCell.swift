//
//  PosterTableViewCell.swift
//  Movies
//
//  Created by Nikolas Gianoglou Coelho on 14/02/22.
//

import UIKit

class PosterTableViewCell: UITableViewCell {
  
  //MARK: - Outlets
  @IBOutlet weak var titulolabel: UILabel!
  @IBOutlet weak var imgView: UIImageView!
  
  
  
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

  //MARK: - preencheViews
  func preencheViews(result: MovieDetails){
    titulolabel.text = result.title
    API.loadImages(parcialURL: result.poster_path) { (image) in
      if let img = image{
        self.imgView.image = img
      }
    }
  }

}
