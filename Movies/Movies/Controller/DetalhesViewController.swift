//
//  DetalhesViewController.swift
//  Movies
//
//  Created by Nikolas Gianoglou Coelho on 14/02/22.
//

import UIKit

class DetalhesViewController: UIViewController {

  var movie: Result!
  
  
  @IBOutlet weak var titulo: UILabel!
  @IBOutlet weak var rating: UILabel!
  @IBOutlet weak var sinopse: UILabel!
  @IBOutlet weak var imgView: UIImageView!
  
  
    override func viewDidLoad() {
      super.viewDidLoad()
      titulo.text = movie.title
      rating.text = String(movie.vote_average)
      sinopse.text = movie.overview
      API.loadImages(parcialURL: movie.poster_path) { (image) in
        if let image = image{
          self.imgView.image = image
        }
      }
    }
    

 

}
