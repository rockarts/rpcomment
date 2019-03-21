//
//  RPComment.swift
//  RobotsAndPencils
//
//  Created by Steven Rockarts on 2019-03-20.
//  Copyright © 2019 Figure4Software. All rights reserved.
//

import Foundation

class RPComment : Model {
    var id:Int
    var text:String
    
    init(id:Int, text:String) {
        self.id = id
        self.text = text
    }
}
