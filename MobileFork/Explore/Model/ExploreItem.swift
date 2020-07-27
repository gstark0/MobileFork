//
//  ExploreItem.swift
//  LetsEat
//
//  Created by Greg Stark on 27/07/2020.
//  Copyright © 2020 Gregory Stark. All rights reserved.
//

import Foundation

struct ExploreItem {
    var name: String
    var image: String
}

extension ExploreItem {
    init(dict: [String: AnyObject]) {
        self.name = dict["name"] as! String
        self.image = dict["image"] as! String
    }
}
