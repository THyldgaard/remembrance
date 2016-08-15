//
//  StateController.swift
//  remembrance
//
//  Created by Tonni Hyldgaard on 7/31/16.
//  Copyright © 2016 Hyldgaard Informatics. All rights reserved.
//

import Foundation

class StateController {
  
  static let itemsFilePath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true).first! + "/Item.txt"
  
  private(set) var items: [ToDoItem] = {
    if let items = NSKeyedUnarchiver.unarchiveObjectWithFile(itemsFilePath) as? [ToDoItem] {
      return items
    } else {
      return [ToDoItem]()
    }
    
  }()
  
  func addItem(item: ToDoItem) {
    items.append(item)
    
  }
  
  func save() {
    NSKeyedArchiver.archiveRootObject(self.items, toFile: StateController.itemsFilePath)
    
  }
  
}
