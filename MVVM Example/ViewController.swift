//
//  ViewController.swift
//  MVVM Example
//
//  Created by marco rodriguez on 16/06/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.cellIdentifier)
        
        tableView.delegate = self
        tableView.dataSource = self
    }


    
    // MARK: - TableView Methods
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.cellIdentifier, for: indexPath) as! CustomTableViewCell
        
        //Se crea una instancia del ViewModel
        let model = data[indexPath.row]
        //let viewModel = CellViewModel(nombre: model.nombre, apellido: model.apellido)
        
        celda.configure(with: CellViewModel(nombre: model.nombre, apellido: model.apellido, edad: model.edad, imagen: model.imagen))
        return celda
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
}




