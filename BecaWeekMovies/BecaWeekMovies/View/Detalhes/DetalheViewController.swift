//
//  DetalheViewController.swift
//  BecaWeekMovies
//
//  Created by Kelly Silva Araujo on 16/02/22.
//

import UIKit

class DetalheViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet weak var filmeImage: UIView!
    @IBOutlet weak var tituloFilmeLabel: UILabel!
    @IBOutlet weak var ratingFilmeLabel: UILabel!
    @IBOutlet weak var sinopseFilmeLabel: UILabel!
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - Actions
    
    @IBAction func botaoVoltar(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
