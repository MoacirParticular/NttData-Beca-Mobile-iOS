//
//  PosterTableViewCell.swift
//  Movies
//
//  Created by Nikolas Gianoglou Coelho on 14/02/22.
//

import UIKit

class PosterTableViewCell: UITableViewCell {
  
  
  @IBOutlet weak var titulolabel: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
  
  func teste(){
    titulolabel.text = "Aos poucos está dando certo"
  }

}
