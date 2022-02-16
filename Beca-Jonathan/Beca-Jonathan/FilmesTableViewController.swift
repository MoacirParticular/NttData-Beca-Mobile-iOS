//
//  FilmesTableViewController.swift
//  Beca-Jonathan
//
//  Created by Jonathan Pereira Almeida on 16/02/22.
//

import UIKit

class FilmesTableViewController: UITableViewController {

    var dadosFilmes:[Atributos] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recebeDadosApi()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dadosFilmes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "capa", for: indexPath) as! ImagemTableViewCell
        let titulo = dadosFilmes[indexPath.row]
        cell.image(atributo: titulo)
        return cell
    }
     
    func recebeDadosApi(){
        API.carregandoFilmes (onComplete: { (receberFilmes) in
            if let filmes = receberFilmes{
                self.dadosFilmes += filmes.results
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        })
    }
    

}
