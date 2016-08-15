//
//  AddToDoItemViewController.swift
//  remembrance
//
//  Created by Tonni Hyldgaard on 7/31/16.
//  Copyright © 2016 Hyldgaard Informatics. All rights reserved.
//

import UIKit

class AddToDoItemViewController: UIViewController {
  
  @IBOutlet weak var cancelButton: UIBarButtonItem!
  @IBOutlet weak var saveButton: UIBarButtonItem!
  @IBOutlet weak var nameTextField: UITextField!
  
  var stateController: StateController?
  // MARK: - Navigation
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // If the cancel button is tapped or no name for the item
    // has been typed in the text field, we do nothing.
    // Otherwise, we create a new to-do item and add
    // it to the state controller.
    
    guard let tappedButton = sender as? UIBarButtonItem where tappedButton != cancelButton else { return }
    guard let text = nameTextField.text else { return }
    
    let todoItem = ToDoItem(name: text, isCompleted: false, creationDate: NSDate())
    stateController?.addItem(todoItem)
    
  }
  
}
