//
//  EventsPage.swift
//  EcoQuest
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct Event: Identifiable {
    let id = UUID()
    let name: String
    let date: String
    let time: String
    let info: String
}

struct EventsPage: View {
    let events: [Event] = [
        Event(name: "Clothing Repair Clinic", date: "Saturday, August 16", time: "2:00 PM", info: "Join us and learn how to repair your clothing. This event is sponsored by the San Francisco Environment and SCRAP, a creative reuse center and arts education. You may bring one clothing item for repair and materials will be provided. Each person will be paired with a SCRAP repair coach. We cannot do alterations or complicated fixes. \n \n This free event is first come first serve. One item per person."),
        Event(name: "Bike Repair Clinic", date: "Sunday, September 7", time: "2:00 PM", info: "Repair your bike with Bay Area Bike Mobile. \n The Bike Mobile will: \n - provide free tune ups and repairs \n - fix flat tires, adjust brakes and gears \n - replace broken or worn-out parts, like chains, seats and tires.\n \n The only thing it can’t do is replace missing wheels or gears. While the mechanics work on your bike they’ll explain how you can keep it running smoothly. \n \n Bike or no bike, everyone is welcome to attend to learn about maintenance, safety and more!"),
        Event(name: "SF Climate Week", date: "April 18 - 16, 2026", time: " ", info: "SF Climate Week is a decentralized climate gathering held annually in San Francisco. It brings together thousands of attendees across hundreds of events focused on climate solutions. Organized by Climatebase and the City of San Francisco, the week features panels, expos, and networking opportunities. The event emphasizes community-driven action, innovation, and collaboration to address climate challenges. ")
    ]
    var body: some View {
        ZStack{
            Image("color")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            
    ScrollView{
        ScrollView {
            VStack(spacing: 70) {
                
                // First section
                ZStack(alignment: .top) {
                    Image("b1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .ignoresSafeArea(edges: .all)
                    
                    VStack {
                        Spacer().frame(height: 200) // space before title
                        
                        Text("Events")
                            .font(.custom("Georgia", size: 50))
                            .fontWeight(.thin)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .bold()
                    }
                }
                .frame(height: 600)
                .scrollTransition(.interactive, axis: .vertical) { content, phase in
                    content
                        .opacity(phase.isIdentity ? 1 : 0)
                        .scaleEffect(phase.isIdentity ? 1 : 0.8)
                        .animation(.easeOut(duration: 0.6), value: phase.isIdentity)
                }
                
                // Spacer section
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 80, height: 350)
                    .opacity(0)
                    .scrollTransition(.interactive, axis: .vertical) { content, phase in
                        content
                            .opacity(phase.isIdentity ? 1 : 0)
                            .scaleEffect(phase.isIdentity ? 1 : 0.9)
                            .animation(.easeOut(duration: 0.6).delay(0.2), value: phase.isIdentity)
                    }
                
                // Events list
                VStack(spacing: 15) {
                    ForEach(events) { event in
                        EventCard(event: event)
                            .scrollTransition(.interactive, axis: .vertical) { content, phase in
                                content
                                    .opacity(phase.isIdentity ? 1 : 0)
                                    .scaleEffect(phase.isIdentity ? 1 : 0.95)
                                    .animation(.easeOut(duration: 0.4).delay(0.1 * Double(events.firstIndex(where: { $0.id == event.id }) ?? 0)), value: phase.isIdentity)
                            }
                    }
                }
                .padding(.bottom, 30)
            }
            .padding(.bottom, 2)
        }
        .background(Color.clear)
        .scrollContentBackground(.hidden)
        .ignoresSafeArea(edges: .top)
}
        .tint(.white)
        .toolbarBackground(.hidden, for: .navigationBar)
}
}

struct EventCard: View {
  let event: Event
  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 15)
            .frame(width: UIScreen.main.bounds.width,
                height: 500)
            .foregroundColor(.white)
            .opacity(0.50)
            .padding(.horizontal, 100.0)
        
        HStack {
            Text(event.name)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding(.bottom, 15)
            
            Text(event.date)
                .foregroundColor(.black)
                .padding(.bottom, 15)
            
            
            
        }
    } // end of ZStack
  } // end of body
} // end of LandmarkCard


#Preview {
    EventsPage()
}
