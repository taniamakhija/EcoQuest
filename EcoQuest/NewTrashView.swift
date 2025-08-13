//
//  NewTrashView.swift
//  EcoQuest
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct NewTrashView: View {
    @Binding var showNewTrash: Bool
    @Binding var newTrashTitle: String
    var onSave: () -> Void

    var body: some View {
        VStack {
            TextField("Enter the trash item...", text: $newTrashTitle)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button {
                onSave()
                showNewTrash = false
            } label: {
                Text("Save")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green.opacity(0.8))
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    NewTrashView(showNewTrash: .constant(true), newTrashTitle: .constant("")) { }
}
