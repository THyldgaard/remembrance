//
//  TableViewDataSource.swift
//  remembrance
//
//  Created by Tonni Hyldgaard on 7/31/16.
//  Copyright © 2016 Hyldgaard Informatics. All rights reserved.
//

import UIKit

class TableViewDataSource: NSObject {
  let stateController: StateController
  
  init(tableView: UITableView, stateController: StateController) {
    self.stateController = stateController
    super.init()
    tableView.dataSource = self
  }
}

