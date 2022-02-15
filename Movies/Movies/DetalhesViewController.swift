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
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
      titulo.text = movie.title
        
    }
    

 

}
