//
//  DataStoreProtocol.swift
//  RobotsAndPencils
//
//  Created by Steven Rockarts on 2019-03-20.
//  Copyright © 2019 Figure4Software. All rights reserved.
//

import Foundation

protocol DataStore {
    func save(comment:Model)
    func readAll() -> [Model]
}
