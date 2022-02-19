//
//  ViewController.swift
//  AppDeFilmes
//
//  Created by Bruna Silva Borges on 14/02/22.
//

import UIKit

//CRIANDO A PRIMEIRA LISTA

class ViewController: UIViewController {
    
    @IBOutlet weak var filmesTableView: UITableView!

    var movies: [Series] = []
    var loadingFilmes = false
    var total  = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraTableView()
        loadFilmes()
        
        view.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1)
    }
    
    func configuraTableView(){
        
        filmesTableView.register(UINib(nibName: "FilmesTableViewCell", bundle: nil), forCellReuseIdentifier: "FilmesTableViewCell")
        filmesTableView.dataSource = self
        filmesTableView.delegate = self
    }
    
    
    func loadFilmes(){
        loadingFilmes = true
        FilmesAPI.loadFilmes { (info) in
            if let info = info {
                self.movies += info.results
                print(self.movies)
                DispatchQueue.main.async {
                    self.filmesTableView.reloadData()
                }
            }
        }
    }
}

extension ViewController: UITableViewDataSource{
    
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        guard let celulaFilmes = tableView.dequeueReusableCell(withIdentifier: "FilmesTableViewCell") as? FilmesTableViewCell else{
            fatalError("Error to create FilmesTableViewCell")
        }
        
        celulaFilmes.dados(movies[indexPath.row])
        return celulaFilmes
    }
}



extension ViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detalheController = DetalhesViewController(nibName: "DetalhesViewController", bundle: nil)
        navigationController?.pushViewController(detalheController, animated: true)
        //ligando o detalhes com o viewController
        detalheController.pegaFilmes = movies[tableView.indexPathForSelectedRow!.row]
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 200
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
        
    }
}


// https://api.themoviedb.org/3/trending/movie/week?limit=30&api_key=5ece71587b5350feefce83a43739de3f&language=pt-BR
