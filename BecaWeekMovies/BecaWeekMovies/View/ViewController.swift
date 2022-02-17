//
//  ViewController.swift
//  BecaWeekMovies
//
//  Created by Kelly Silva Araujo on 14/02/22.
//

import UIKit

class ViewController: UIViewController {
  

    @IBOutlet weak var filmesTableView: UITableView!
    
    var guardaFilme: [Resultados] = []
    var carregaFilme = false
    var total = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        carregandoFilmes()
        configuraTableView()
        
        view.backgroundColor = UIColor (red: 184.0/255.0, green: 246.0/255.0, blue: 223.0/255.0, alpha: 1) // HOME T V H?
    }
    
    func configuraTableView() {
        filmesTableView.register(UINib(nibName: "FilmeTableViewCell", bundle: nil), forCellReuseIdentifier: "FilmeTableViewCell")
        filmesTableView.dataSource = self
        filmesTableView.delegate = self
   }
    
    func carregandoFilmes() {
        carregaFilme = true
        API.carregandoFilmes { (informacao) in
            if let informacao = informacao {
                self.guardaFilme += informacao.results
                print(self.carregaFilme)
                DispatchQueue.main.async {
                    self.filmesTableView.reloadData()
                }
            }
        }
    }

    
}


extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return guardaFilme.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                
        guard let celulaFilme = tableView.dequeueReusableCell(withIdentifier: "FilmeTableViewCell") as? FilmeTableViewCell else {
            fatalError("error to create FilmeTableViewCell")
        }
                
        celulaFilme.dados(guardaFilme[indexPath.row])
                return celulaFilme
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detalheController = DetalheViewController(nibName: "DetalheViewController", bundle: nil)
        
        navigationController?.pushViewController(detalheController, animated: true)
        
        detalheController.carregaDetalhe = guardaFilme[tableView.indexPathForSelectedRow!.row]
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader
        
        return headerView
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
}
