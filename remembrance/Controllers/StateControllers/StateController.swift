//
//  StateController.swift
//  remembrance
//
//  Created by Tonni Hyldgaard on 7/31/16.
//  Copyright © 2016 Hyldgaard Informatics. All rights reserved.
//

import Foundation

class StateController {
  
  private(set) var items: [ToDoItem] = []
  
  func addItem(item: ToDoItem) {
    items.append(item)
  }
  
}
