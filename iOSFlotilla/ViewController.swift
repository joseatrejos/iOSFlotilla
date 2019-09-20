//
//  ViewController.swift
//  iOSFlotilla
//
//  Created by Alumno on 9/20/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var flotilla : [Vehiculo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        flotilla.append(Vehiculo(placa: "ABC123", modelo: "Atos", marca: "Hyundai", año: 2017))
        flotilla.append(Vehiculo(placa: "XYZ123", modelo: "Dodge", marca: "Dodge", año: 2005))
        flotilla.append(Vehiculo(placa: "DEF123", modelo: "Accord", marca: "Honda", año: 2008))
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flotilla.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaFlotilla") as? celdaFlotillaController
        
        celda?.lblPlaca.text = flotilla[indexPath.row].placa
        celda?.lblMarca.text = flotilla[indexPath.row].marca
        celda?.lblModelo.text = flotilla[indexPath.row].modelo
        celda?.lblAño.text = "\(flotilla[indexPath.row].año)"
        
        return celda!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}

