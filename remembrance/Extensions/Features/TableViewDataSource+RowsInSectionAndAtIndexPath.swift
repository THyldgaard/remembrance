//
//  TableViewDataSource+RowsInSectionAndAtIndexPath.swift
//  remembrance
//
//  Created by Tonni Hyldgaard on 8/1/16.
//  Copyright © 2016 Hyldgaard Informatics. All rights reserved.
//

import Foundation
import UIKit

extension TableViewDataSource: UITableViewDataSource {
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return stateController.items.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let toDoItem = stateController.items[indexPath.row]
    let cell = tableView.dequeueReusableCellWithIdentifier(ToDoItemCell.identifier, forIndexPath: indexPath) as! ToDoItemCell
    cell.name = toDoItem.name
    cell.isCompleted = toDoItem.isComplete
    return cell
  }
  
}