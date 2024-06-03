//
//  ToDoItem.swift
//  IterationOne_ToDoList

//

//** This file contains all the code for the ToDoItem class**

import Foundation
import SwiftData

@Model
class ToDoItem {
    //Change the class to ToDoItem: Identifiable
    
    //Add the variable id and set it equal to type UUID()
    
    var title = ""
    var isImportant = false
    
   //add false?
    init(title: String, isImportant: Bool) {
        self.title = title
        self.isImportant = isImportant
    }
}
