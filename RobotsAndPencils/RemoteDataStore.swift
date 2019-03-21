//
//  RemoteDataStore.swift
//  RobotsAndPencils
//
//  Created by Steven Rockarts on 2019-03-20.
//  Copyright © 2019 Figure4Software. All rights reserved.
//

import Foundation

class RemoteDataStore : DataStore {
    
    func save(comment:Model) {
        //Networking call to some remote service
    }
    
    func readAll() -> [Model] {
        //Networking call to some remote service
        return []
    }
}
