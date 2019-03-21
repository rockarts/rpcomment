//
//  HomeTableViewController.swift
//  RobotsAndPencils
//
//  Created by Steven Rockarts on 2019-03-20.
//  Copyright © 2019 Figure4Software. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {

    var storage: DataStore?
    var data:[Model] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let dataStore = storage {
            dataStore.save(comment: RPComment(id: 1, text: "Hi!"))
            dataStore.save(comment: RPAnnotation(id: 2, text: "Hi again!"))
            
            data.append(contentsOf: dataStore.readAll())
            
            tableView.reloadData()
        }
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = data[indexPath.row].text
        
        return cell
    }
}
