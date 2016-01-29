//
//  Task+CoreDataProperties.swift
//  ToDoList
//
//  Created by Tai Nguyen Bui on 29/01/16.
//  Copyright © 2016 Tai Nguyen Bui. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Task {

    @NSManaged var title: String?

}
