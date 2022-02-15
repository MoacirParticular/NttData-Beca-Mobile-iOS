//
//  MoviesViewController.swift
//  Beca-Jonathan
//
//  Created by Jonathan Pereira Almeida on 15/02/22.
//

import UIKit

class MoviesViewController : UIViewController {
    
    @IBOutlet weak var tableView : UITableView!
    @IBOutlet weak var nameTextField : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTextField()
        setTableView()
        
    }
    
    @IBAction func searchButtonTouched(_ sender:UIButton){
        dismissKeyboard()
        guard let text = nameTextField.text,
              text.trimmingCharacters(in: .whitespacesAndNewlines) != "" else { return }
        let name = text.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    func setTextField(){
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard())
        tapGesture.cancelsTouchesInView = false
        self.view?.addGestureRecognizer(tapGesture)
        self.nameTextField.delegate = self
                                                
    }
    
    func setTableView(){
            self.tableView.dataSource = self
            self.tableView.delegate = self
            self.tableview.tableFooterView = UIView(frame: .zero)
        }
    
    @objc func dismissKeyboard(){
            nameTextField.resignFirstResponder()
        }
    
    @IBAction func infoButtonTouched(_ sender:UIBarButtonItem){
        let alertController = UIAlertController(title: Alert.TITLE, message: Alert.MESSAGE , preferredStyle: .alert)
            let cancel = UIAlertAction(title: Alert.CANCEL_ACTION, style: .cancel, handler: nil)
            
        }
     
    
    
}
