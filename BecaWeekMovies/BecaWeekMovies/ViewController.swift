//
//  ViewController.swift
//  BecaWeekMovies
//
//  Created by Kelly Silva Araujo on 14/02/22.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var filmesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filmesTableView.dataSource = self
        filmesTableView.delegate = self
        
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
                cell.textLabel?.text = "filme \(indexPath.row)" // setei o título e o número da linha que o método tá passando no momento (essas linhas foram comentadas depois que instanciei a célula criada, pois essa aqui instanciava uma célula genérica)
                return cell
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader
        
        return headerView
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
}
