//
//  ItemModel.swift
//  TodoListSwiftUI
//
//  Created by Qassim Municipality iMac on 22/06/1444 AH.
//

import Foundation

// Immutable Struct

struct ItemModel: Identifiable, Codable {
    var id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
