//
//  ViewController.swift
//  RobotsAndPencils
//
//  Created by Steven Rockarts on 2019-03-20.
//  Copyright © 2019 Figure4Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var storage: DataStore?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let dataStore = storage {
            dataStore.save(comment: RPComment(id: 1, text: "Hi!"))
            dataStore.save(comment: RPAnnotation(id: 2, text: "Hi again!"))
        }
    }
}
