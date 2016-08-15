//
//  ToDoItem.swift
//  remembrance
//
//  Created by Tonni Hyldgaard on 7/31/16.
//  Copyright © 2016 Hyldgaard Informatics. All rights reserved.
//

import Foundation

class ToDoItem: NSObject, NSCoding {
  
  let name: String
  let creationDate: NSDate
  var isCompleted: Bool
  
  init(name: String, isCompleted: Bool, creationDate: NSDate) {
    self.name = name
    self.isCompleted = isCompleted
    self.creationDate = creationDate
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    // Taking the values to initialize properties from the
    // NSCoder instance
    name = aDecoder.decodeObjectForKey(Keys.Name.rawValue) as! String
    isCompleted = aDecoder.decodeObjectForKey(Keys.IsCompleted.rawValue) as! Bool
    creationDate = aDecoder.decodeObjectForKey(Keys.CreationDate.rawValue) as! NSDate
    
  }
  
  
}
