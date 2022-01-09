//
//  Model.swift
//  ToDoItem
//
//  Created by Вадим Ивлюшкин on 07.01.2022.
//

import Foundation


var toDoItems: [[String: Any]] {
    set {
        UserDefaults.standard.set(newValue, forKey: "ToDoDataKey")
        UserDefaults.standard.synchronize()
    }
    
    get {
        if let array = UserDefaults.standard.array(forKey: "ToDoDataKey") as? [[String: Any]] {
            return array
        } else {
            return []
        }
    }
}


func addItem(nameItem: String, isComplited: Bool = false) {
    toDoItems.append(["Name": nameItem, "isComplited": isComplited])
}

func removeItem(at index: Int) {
    toDoItems.remove(at: index)
}

func moveItem(fromIndex: Int, toIndex: Int) {
    let from = toDoItems[fromIndex]
    toDoItems.remove(at: fromIndex)
    toDoItems.insert(from, at: toIndex)
}


func changeState(at item: Int) -> Bool {
    toDoItems[item]["isComplited"] = !(toDoItems[item]["isComplited"] as! Bool)
    return toDoItems[item]["isComplited"] as! Bool
}
