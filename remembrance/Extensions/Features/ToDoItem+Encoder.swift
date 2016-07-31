//
//  ToDoItem+Encoder.swift
//  remembrance
//
//  Created by Tonni Hyldgaard on 7/31/16.
//  Copyright © 2016 Hyldgaard Informatics. All rights reserved.
//

import Foundation

/**
  This extention is used to store the enum value and the method
  to encode data, so that only initialisers and values are in the
  ToDoItem class.
 */

extension ToDoItem {
  
  enum Keys: String {
    /**
     These are the names of the properties for encoding and
     decoding. We keep them in an enum to better organize
     them and avoid typos.
     */
    case Name = "name"
    case IsCompleted = "isCompleted"
    case CreationDate = "creationDate"
    
  }
  
  func encodeWithCoder(aCoder: NSCoder) {
    // Encoding of properties through NSCoder
    aCoder.encodeObject(name, forKey: Keys.Name.rawValue)
    aCoder.encodeObject(isComplete, forKey: Keys.IsCompleted.rawValue)
    aCoder.encodeObject(creationDate, forKey: Keys.CreationDate.rawValue)
    
  }
  
}
