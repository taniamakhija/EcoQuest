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
            VStack {
                Text("Trash Logging")
                    .font(.custom("Georgia", size: 50))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .bold()
//                    .font(.title)
//                    .fontWeight(.black)
                Text("Click on the bins below to log your trash!")
                    .font(.custom("Georgia", size: 20))
                Spacer()
            }
            VStack {
                binButton(name:"Trash")
                binButton(name:"Recycling")
                binButton(name:"Compost")
            }
            
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
    func binButton(name: String) -> some View {
        Button {
            bin = name
        } label: {
            Text(name)
                .font(.title)
                .fontWeight(.bold)
        }
    }
}

#Preview {
    LogPage()
        .modelContainer(for: DisposedItem.self, inMemory: true)
}
