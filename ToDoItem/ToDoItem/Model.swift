//
//  Model.swift
//  ToDoItem
//
//  Created by Вадим Ивлюшкин on 07.01.2022.
//

import Foundation


var toDoItems: [[String: Any]] = [["Name": "Позвонить на работу", "isComplited": true], ["Name": "Написать приложение", "isComplited": false], ["Name": "Отметить успешно выполненное задание", "isComplited": false], ]


func addItem(nameItem: String, isComplited: Bool = false) {
    toDoItems.append(["Name": nameItem, "isComplited": isComplited])
    saveData()
}

func removeItem(at index: Int) {
    toDoItems.remove(at: index)
    saveData()
}

func changeState(at item: Int) -> Bool {
    toDoItems[item]["isComplited"] = !(toDoItems[item]["isComplited"] as! Bool)
    saveData()
    return toDoItems[item]["isComplited"] as! Bool
}

func saveData(){
    
}

func loadData() {
    
}

