//
//  LocalDataStore.swift
//  RobotsAndPencils
//
//  Created by Steven Rockarts on 2019-03-20.
//  Copyright © 2019 Figure4Software. All rights reserved.
//

import Foundation

class LocalDataStore : DataStore {
    private var data:[Model] = []
    
    func save(comment:Model) {
        data.append(comment)
    }
    
    func readAll() -> [Model] {
        return data
    }
}
