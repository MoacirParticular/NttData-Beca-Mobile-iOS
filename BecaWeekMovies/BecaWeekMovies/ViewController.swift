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
        
       configuraTableView()
        
        view.backgroundColor = UIColor (red: 184.0/255.0, green: 246.0/255.0, blue: 223.0/255.0, alpha: 1) // HOME T V H?
    }
    
    func configuraTableView() {
        filmesTableView.register(UINib(nibName: "FilmeTableViewCell", bundle: nil), forCellReuseIdentifier: "FilmeTableViewCell")
        filmesTableView.dataSource = self
        filmesTableView.delegate = self
   }
    
}


extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                
        guard let celulaFilme = tableView.dequeueReusableCell(withIdentifier: "FilmeTableViewCell") as? FilmeTableViewCell else {
            fatalError("error to create FilmeTableViewCell")
        }
                return celulaFilme
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
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
}
