//
//  TrashItem.swift
//  EcoQuest
//
//  Created by Scholar on 8/13/25.
//

import Foundation
import SwiftData

@Model
class TrashItem {
    var title: String
    
    init(title: String) {
        self.title = title
    }
}
