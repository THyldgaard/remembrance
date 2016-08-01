//
//  TableViewDelegate.swift
//  remembrance
//
//  Created by Tonni Hyldgaard on 8/1/16.
//  Copyright © 2016 Hyldgaard Informatics. All rights reserved.
//

import UIKit

class TableViewDelegate: NSObject {
  
  let stateController: StateController
  
  init(tableView: UITableView, stateController: StateController) {
    self.stateController = stateController
    super.init()
    tableView.delegate = self
  }
  

}
