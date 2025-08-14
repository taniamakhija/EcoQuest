//
//  NewTrashView.swift
//  EcoQuest
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct NewBinView: View {
    var bin : String
    var items : [DisposedItem]
    var onAdd: (String) -> Void
    var onDelete: (IndexSet) -> Void
    var onClose: () -> Void
    @State private var newItem = ""
    
    var body: some View {
        VStack(spacing: 10) {
            // Header with close button
            HStack {
                Button("<") { onClose() }
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
                Text("\(bin) Items")
                    .font(.headline)
                    .fontWeight(.black)
                
                Spacer()
            }
            .padding()
            
            // Item list
            List {
                ForEach(items) { item in
                    Text(item.title)
                }
                .onDelete(perform: onDelete)
            }
            .listStyle(.plain)
            
            // Add new item field
            HStack {
                TextField("Add new item...", text: $newItem)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Save") {
                    guard !newItem.trimmingCharacters(in: .whitespaces).isEmpty else { return }
                    onAdd(newItem)
                    newItem = ""
                }
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(Color.green.opacity(0.85))
                .foregroundColor(.white)
                .cornerRadius(6)
            }
            .padding()
        }
        .frame(width: 300, height: 450)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 10)
    }
}
#Preview {
    
}
