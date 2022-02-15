//
//  tableViewDataSource.swift
//  Beca-Jonathan
//
//  Created by Jonathan Pereira Almeida on 15/02/22.
//

import UIKit

extension MoviesViewController : UITableViewDataSource {
    
    func tableView (_ tableView: UITableView , numberOfRowsInSection section : Int) -> Int {
        return 1
    }
    
    func tableView (_ tableView: UITableView, cellForRowAt indexpath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: cellID.NO_MOVIE_CELL ) as! NoMovieTableViewCell
    }
    func tableView (_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UISCreen.main.bounds.height
    }
    
    
    
    
    
}
