//
//  ListaFilmesTableViewController.swift
//  Movies
//
//  Created by Nikolas Gianoglou Coelho on 14/02/22.
//

import UIKit
import Alamofire

class ListaFilmesTableViewController: UITableViewController {

  //MARK: - Atributes
  var list: [MovieDetails] = []
  var images: [UIImage] = []
  
  //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return list.count
    }
  
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PosterTableViewCell
      let movie = list[indexPath.row]
      cell.preencheViews(result: movie)
      return cell
  }
  
  //MARK: - prepare
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let controller = segue.destination as! DetalhesViewController
    let selectedRow = list[tableView.indexPathForSelectedRow!.row]
    controller.movie = selectedRow
  }

  //MARK: - loadData
    func loadData(){
      API.loadMovies { (info) in
        if let info = info{
          self.list += info.results
          DispatchQueue.main.async {
            self.tableView.reloadData()
          }
        }
      }
    }

}
