//
//  Log Page.swift
//  EcoQuest
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI
import SwiftData

struct Log_Page: View {
    @State private var showTrash = false
    @State private var showRecycling = false
    @State private var showCompost = false
    @State private var showNewTrash = false
    @State private var newTrashTitle = ""   // plain text for input

    @Query var trashItems: [TrashItem]
    @Environment(\.modelContext) var modelContext

    var body: some View {
        ZStack {
            VStack {
                Text("Trash Logging")
                    .font(.title)
                    .fontWeight(.black)

                HStack {
                    Button { withAnimation { showTrash = true } } label: {
                        Text("trash").font(.title).fontWeight(.bold)
                    }
                    Button { withAnimation { showRecycling = true } } label: {
                        Text("recycling").font(.title).fontWeight(.bold)
                    }
                    Button { withAnimation { showCompost = true } } label: {
                        Text("compost").font(.title).fontWeight(.bold)
                    }
                }
            }

            // Trash popup
            if showTrash {
                VStack {
                    HStack {
                        Button { showTrash = false } label: {
                            Text("<").font(.title).fontWeight(.bold)
                        }

                        Spacer()

                        Text("Trashed Items")
                            .font(.headline)
                            .fontWeight(.black)

                        Spacer()

                        Button {
                            newTrashTitle = ""
                            withAnimation { showNewTrash = true }
                        } label: {
                            Text("+").font(.title).fontWeight(.bold)
                        }
                    }
                    .padding()

                    List {
                        ForEach(trashItems) { trashItem in
                            Text(trashItem.title)
                        }
                        .onDelete(perform: deleteTrash)
                    }
                    .listStyle(.plain)
                }
                .frame(width: 300, height: 400)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 10)
            }

            // Recycling popup
            if showRecycling {
                HStack {
                    Button("<") { showRecycling = false }
                    Text("Recycled Items").font(.headline).padding()
                }
                .frame(width: 300, height: 200)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 10)
            }

            // Compost popup
            if showCompost {
                HStack {
                    Button("<") { showCompost = false }
                    Text("Composted Items").font(.headline).padding()
                }
                .frame(width: 300, height: 200)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 10)
            }

            // NewTrashView popup (no dimmed background)
            if showNewTrash {
                NewTrashView(showNewTrash: $showNewTrash, newTrashTitle: $newTrashTitle) {
                    let trash = TrashItem(title: newTrashTitle)
                    modelContext.insert(trash)
                }
                .frame(maxWidth: 300)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 10)
            }
        }
    }

    func deleteTrash(at offsets: IndexSet) {
        for offset in offsets {
            let trashItem = trashItems[offset]
            modelContext.delete(trashItem)
        }
    }
}

#Preview {
    Log_Page()
        .modelContainer(for: TrashItem.self, inMemory: true)
}
