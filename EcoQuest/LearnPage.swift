//
//  LearnPage.swift
//  EcoQuest
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct LearnPage: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("natureBackground")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .overlay(Color.black.opacity(0.25))
                
                ScrollView {
                    VStack(spacing: 25) {
                        Text("Learn with EcoQuest!")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .shadow(radius: 3)
                        
                        Text("Explore topics about the environment and sustainability. Tap on a section to learn more!")
                            .multilineTextAlignment(.center)
                            .lineLimit(nil)
                            .frame(maxWidth: 350, minHeight: 100)
                            .font(.system(size: 20, design: .rounded))
                            .foregroundColor(.white.opacity(0.9))
                        
                        // Topic cards
                        Group {
                            NavigationLink(destination: RecyclingLandfillCompostPage()) {
                                topicCard(title: "♻️ Recycling, Landfill, Compost", color: Color.green.opacity(0.6))
                            }
                            
                            NavigationLink(destination: ClimateChangePage()) {
                                topicCard(title: "🌍 Climate Change", color: Color.teal.opacity(0.6))
                            }
                            
                            NavigationLink(destination: WildlifeProtectionPage()) {
                                topicCard(title: "🦋 Wildlife Protection", color: Color.brown.opacity(0.6))
                            }
                            
                            NavigationLink(destination: RenewableEnergyPage()) {
                                topicCard(title: "⚡ Renewable Energy", color: Color.yellow.opacity(0.6))
                            }
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Learn")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    // Reusable card style
    func topicCard(title: String, color: Color) -> some View {
        Text(title)
            .font(.title2)
            .fontWeight(.medium)
            .padding(.horizontal)
            .frame(maxWidth: 350, minHeight: 100)
            .background(color.blur(radius: 7)
                .background(.ultraThinMaterial))
            .foregroundColor(.black)
            .cornerRadius(20)
            .shadow(radius: 5)
            .background(Color.white.opacity(0.9))
            .cornerRadius(15)
            .multilineTextAlignment(.center)
    }
}

struct RecyclingLandfillCompostPage: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("♻️ Recycling, Landfill, Compost")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("""
                **Recycling**: Turns used materials into new products, reducing waste and conserving resources. Examples: paper, certain plastics, glass, aluminum.

                **Landfill**: The last resort for waste that cannot be reused or recycled. Landfills take up space and can release methane, a greenhouse gas.

                **Compost**: Natural process of recycling organic matter, like food scraps and yard waste, into nutrient-rich soil. Keeps organics out of landfills and improves soil health.
                """)
                
                Text("Tip: Always check your local recycling rules, as they vary by city!")
                    .italic()
                    .foregroundColor(.green)
            }
            .padding()
        }
        .navigationTitle("Recycling & Waste")
    }
}

struct ClimateChangePage: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("🌍 Climate Change")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("""
                Climate change refers to long-term shifts in temperatures and weather patterns. Primarily caused by human activities like burning fossil fuels, deforestation, and industrial processes.

                **Key Impacts**:
                - Rising sea levels from melting ice caps
                - More extreme weather events (storms, heatwaves, floods)
                - Disruption of ecosystems and agriculture
                """)
                
                Text("Tip: Reducing your carbon footprint through sustainable transport and energy use helps slow climate change.")
                    .italic()
                    .foregroundColor(.green)
            }
            .padding()
        }
        .navigationTitle("Climate Change")
    }
}

struct WildlifeProtectionPage: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("🦋 Wildlife Protection")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("""
                Protecting wildlife means conserving habitats, preventing poaching, and reducing human-wildlife conflict.

                **Why it matters**:
                - Healthy ecosystems depend on biodiversity
                - Many species are keystone species that affect entire ecosystems
                - Loss of biodiversity can harm food security and human health
                """)
                
                Text("Tip: Support local conservation programs and avoid buying products from endangered species.")
                    .italic()
                    .foregroundColor(.green)
            }
            .padding()
        }
        .navigationTitle("Wildlife Protection")
    }
}

struct RenewableEnergyPage: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("⚡ Renewable Energy")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("""
                Renewable energy comes from naturally replenishing sources like sunlight, wind, and water.

                **Benefits**:
                - Reduces greenhouse gas emissions
                - Provides sustainable power
                - Often cheaper in the long term

                **Examples**:
                - Solar panels
                - Wind turbines
                - Hydroelectric dams
                """)
                
                Text("Tip: Even small changes, like switching to LED bulbs or installing solar panels, make a difference.")
                    .italic()
                    .foregroundColor(.green)
            }
            .padding()
        }
        .navigationTitle("Renewable Energy")
    }
}

#Preview {
    LearnPage()
}
