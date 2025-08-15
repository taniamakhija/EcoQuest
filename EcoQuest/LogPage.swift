//
//  Log Page.swift
//  EcoQuest
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI
import SwiftData

struct LogPage: View {
    @State private var bin : String? = nil
    @Query var items: [DisposedItem]
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        ZStack {
            Color("light green")
                .ignoresSafeArea()
            VStack (spacing: 20){
                Text("Trash Logging")
                    .font(.custom("Georgia", size: 50))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .bold()
                Text("Click on the bins below to log your trash!")
                    .font(.custom("Georgia", size: 20))
                
                Spacer()
            }
            VStack(spacing: 30) {
                binButton(name: "Trash", imageName: "trash")
                binButton(name: "Recycling", imageName: "recycle")
                binButton(name: "Compost", imageName: "compost")
            }
            .padding(.top, 100)
            
            if let b = bin {
                NewBinView(
                    bin: b,
                    items: items.filter { $0.bin.lowercased() == b.lowercased() },
                    onAdd: { title in
                        let newItem = DisposedItem(title: title, bin: b)
                        modelContext.insert(newItem)
                    },
                    onDelete: { offsets in
                        let binItems = items.filter { $0.bin.lowercased() == b.lowercased() }
                        for offset in offsets {
                            modelContext.delete(binItems[offset])
                        }
                    },
                    onClose: { bin = nil }
                )
            }
        }
    }
    
    func binButton(name: String, imageName: String) -> some View {
        Button {
            bin = name
        } label: {
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120) // Adjust as needed
                Text(name)
                    .font(.custom("Georgia", size: 15))
                    .foregroundColor(.black)
            }
        }
    }
}

#Preview {
    LogPage()
        .modelContainer(for: DisposedItem.self, inMemory: true)
}
