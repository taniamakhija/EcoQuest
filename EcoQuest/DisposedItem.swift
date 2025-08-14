//
//  TrashItem.swift
//  EcoQuest
//
//  Created by Scholar on 8/13/25.
//

import Foundation
import SwiftData

@Model
class DisposedItem {
    var title: String
    var bin : String
    
    init(title: String, bin : String) {
        self.title = title
        self.bin = bin
    }
}
