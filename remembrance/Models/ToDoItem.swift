//
//  ToDoItem.swift
//  remembrance
//
//  Created by Tonni Hyldgaard on 7/31/16.
//  Copyright © 2016 Hyldgaard Informatics. All rights reserved.
//

import Foundation

class ToDoItem {
  let name: String
  let creationDate: NSDate
  var isComplete: Bool
  
  init(name: String, isCompleted: Bool, creationDate: NSDate) {
    self.name = name
    self.isComplete = isCompleted
    self.creationDate = creationDate
    
  }
  
  
}
