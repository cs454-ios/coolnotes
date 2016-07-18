//
//  Notebook.swift
//  CoolNotes
//
//  Created by Jeanne Pascua on 7/18/16.
//  Copyright © 2016 CSULA. All rights reserved.
//

import Foundation
import CoreData


class Notebook: NSManagedObject {

    convenience init (name: String, context: NSManagedObjectContext) {
        if let ent = NSEntityDescription.entityForName("Notebook", inManagedObjectContext: context) {
            self.init(entity: ent, insertIntoManagedObjectContext: context)
            self.name = name
            self.creationDate = NSDate()
        } else {
            fatalError("Unable to find Entity name!")
        }
    }

}
