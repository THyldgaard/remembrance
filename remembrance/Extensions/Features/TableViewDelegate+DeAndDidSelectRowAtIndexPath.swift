//
//  TableViewDelegate+DeAndDidSelectRowAtIndexPath.swift
//  remembrance
//
//  Created by Tonni Hyldgaard on 8/1/16.
//  Copyright © 2016 Hyldgaard Informatics. All rights reserved.
//

import Foundation
import UIKit

extension TableViewDelegate: UITableViewDelegate {
  
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    // When a cell is selected, we remove its highlight,
    // retrieve the corresponding to-do item and change
    // its completion.
    tableView.deselectRowAtIndexPath(indexPath, animated: false)
    let tappedItem = stateController.items[indexPath.row]
    tappedItem.isCompleted = !tappedItem.isCompleted
    tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.None)
  }
  
}
