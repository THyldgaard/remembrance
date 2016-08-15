//
//  ToDoItemCell.swift
//  remembrance
//
//  Created by Tonni Hyldgaard on 8/1/16.
//  Copyright © 2016 Hyldgaard Informatics. All rights reserved.
//

import UIKit

class ToDoItemCell: UITableViewCell {
  
  static let identifier = "ToDoItemCell"
  
  var name: String? {
    didSet {
      textLabel?.text = name
    }
  }
  
  var isCompleted: Bool = false {
    didSet {
      
      isCompleted ? (accessoryType = UITableViewCellAccessoryType.Checkmark) : (accessoryType = UITableViewCellAccessoryType.None)
      //
      //      if isCompleted {
      //        accessoryType = UITableViewCellAccessoryType.Checkmark
      //      } else {
      //        accessoryType = UITableViewCellAccessoryType.None
      //      }
    }
  }
  
}
