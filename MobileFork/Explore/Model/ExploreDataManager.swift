//
//  ExploreDataManager.swift
//  LetsEat
//
//  Created by Greg Stark on 27/07/2020.
//  Copyright © 2020 Gregory Stark. All rights reserved.
//

import Foundation

class ExploreDataManager {
    fileprivate var items:[ExploreItem] = []
    
    func fetch() {
        for data in loadData() {
            items.append(ExploreItem(dict: data))
        }
    }
    
    func numberOfItems() -> Int {
        return items.count
    }
    
    func explore(at index:IndexPath) -> ExploreItem {
        return items[index.item]
    }
    
    fileprivate func loadData() -> [[String: AnyObject]] {
        guard let path = Bundle.main.path(forResource: "ExploreData", ofType: "plist"), let items = NSArray(contentsOfFile: path)
        else {
            return [[:]]
        }
        return items as! [[String:AnyObject]]
    }
}
