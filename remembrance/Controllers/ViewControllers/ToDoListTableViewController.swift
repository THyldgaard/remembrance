//
//  ToDoListTableViewController.swift
//  remembrance
//
//  Created by Tonni Hyldgaard on 7/31/16.
//  Copyright © 2016 Hyldgaard Informatics. All rights reserved.
//

import UIKit

class ToDoListTableViewController: UITableViewController {
  
  var stateController: StateController?
  var tableViewDataSource: TableViewDataSource?
  var tableViewDelegate: TableViewDelegate?
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    tableView.reloadData()
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Create delegate and data source instances
    if let stateController = stateController {
      tableViewDataSource = TableViewDataSource(tableView: tableView, stateController: stateController)
      tableViewDelegate = TableViewDelegate(tableView:tableView, stateController: stateController)
    }
  }
  
  /**
   Makes it possible to connect both the cancel and save buttons
   to the “Exit” item at the top of its scene in the storyboard.
   
   - parameter segue: UIStoryboardSegue
   */
  
  //
  @IBAction func unwindToList(segue: UIStoryboardSegue) {
    
  }
  
  // MARK: - Navigation
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Pass the state controller forward to the next view controller.
    if let navigationController = segue.destinationViewController as? UINavigationController,
      let addToDoItemViewController = navigationController.viewControllers.first as? AddToDoItemViewController {
      addToDoItemViewController.stateController = stateController
    }
    
  }
  
  
}
