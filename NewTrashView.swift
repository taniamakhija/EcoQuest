//
//  NewTrashView.swift
//  EcoQuest
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct NewTrashView: View {
    @Binding var showNewTrash: Bool
    @Bindable var trashItem: TrashItem
    @Environment(\.modelContext) var modelContext
    var body: some View {
        VStack {
            Text("Trash Item: ")
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter the trash item...", text: $trashItem.title, axis: .vertical)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            Button {
                addTrash()
                showNewTrash = false
            } label: {
                    Text("Save")
            }
        }
        .padding()
    }
    func addTrash() {
        let trash = TrashItem(title: trashItem.title)
        modelContext.insert(trash)
    }
}

#Preview {
    NewTrashView(showNewTrash: .constant(false), trashItem: TrashItem(title: ""))
}
