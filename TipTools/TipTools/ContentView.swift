//
//  ContentView.swift
//  TipTools
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 24/11/2023.
//

import SwiftUI
import TipKit
struct ContentView: View {
    @State private var colors = MockData.colors
    let AddColorTip = addColorTip()
    let AddFavoriteTip = addFavoriteTip()
    @State private var isFavoriteColor:Bool = false
  
    enum Flavor: String, CaseIterable, Identifiable {
        case chocolate, vanilla, strawberry
        var id: Self { self }
    }
    @State private var selectedFlavor: Flavor = .chocolate
    var body: some View {
        NavigationStack{
            ScrollView {
                TipView(AddFavoriteTip)
                    .tipCornerRadius(30)
                    .tipBackground(.teal.opacity(0.2))
                ForEach(colors, id: \.self) {
                    RoundedRectangle(cornerRadius: 10)
                        .fill($0.gradient)
                        .frame(height: 100)
                        .contextMenu{
                            Button("Favorite", systemImage: "star.fill"){
                                AddFavoriteTip.invalidate(reason: .actionPerformed)
                                        }
                            Toggle(
                                   "Vibrate on Ring",
                                   systemImage: "dot.radiowaves.left.and.right",
                                   isOn: $isFavoriteColor
                               )
                            Picker("Flavor", selection: $selectedFlavor) {
                                    Text("Chocolate").tag(Flavor.chocolate)
                                    Text("Vanilla").tag(Flavor.vanilla)
                                    Text("Strawberry").tag(Flavor.strawberry)
                                }
                        }
                }
            }
            .onAppear{
                Task { await addFavoriteTip.colorViewVistitedEvent.donate()}
            }
            .padding()
            .navigationTitle("Tiptools")
            .toolbar {
                Button {
                    AddColorTip.invalidate(reason: .actionPerformed)
                    colors.insert(.random, at: 0)
                    Task { await addFavoriteTip.setFavoriteEvent.donate() }
                }label: {
                    Image(systemName: "plus")
                }
                .popoverTip(AddColorTip)
                
            }
        }
    }
}

#Preview {
    ContentView()
        .task {
            try? Tips.resetDatastore()
            try? Tips.configure([
            .displayFrequency(.immediate),
                .datastoreLocation(.applicationDefault)
            ])
        }
}
extension Color {
    static var random: Color {
        return Color(red: Double.random(in: 0...1), green: Double.random(in: 0...1), blue: Double.random(in: 0...1))
    }
}
struct MockData {
    static let colors =  [Color.random,Color.random,Color.random,Color.random]
}
