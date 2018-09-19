//
//  ViewController.swift
//  celdasperzonalisadas
//
//  Created by Alumno on 18/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let alumno = ["Benjamin", "Pablo","Sofia","Rafa","Fernanda"]
    let promedio = [9.9,9.8,9.7,9.6,9.5]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumno.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let CeldaAlumno = tableView.dequeueReusableCell(withIdentifier: "CellAlumno") as? CeldaAlumno
        
        CeldaAlumno?.lblalumno.text = alumno[indexPath.row]
        CeldaAlumno?.lblpromedio.text = "\(promedio[indexPath.row])"
        
        return CeldaAlumno!
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

