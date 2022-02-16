//
//  DetailsViewController.swift
//  Beca-Jonathan
//
//  Created by Jonathan Pereira Almeida on 16/02/22.
//

import Foundation
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
      API.loadingImages(parcialURL: movie.poster_path) { (image) in
        if let image = image{
          self.imgView.image = image
        }
      }
    }
    

 

}
