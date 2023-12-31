//
//  PulseEffectView.swift
//  SymbolEffects
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 30/11/2023.
//

import SwiftUI

struct PulseEffectView: View {
    @State var trigger = 0
    @State var isActive = false
    var body: some View {
        VStack{
            Text("Pulse")
                .font(.largeTitle)
                .padding(.top, 50)
            Text("Discrete, Indefinite")
            Spacer()
            HStack{
                Spacer()
                VStack(spacing: 50){
                    Image(systemName: "wifi.exclamationmark")
                        .scaleEffect(4)
                        .symbolEffect(.pulse, value: trigger)
                    Button("Trigger") {
                        trigger += 1
                    }
                }
                Spacer()
                VStack(spacing: 50){
                    Image(systemName: "wifi.exclamationmark")
                        .scaleEffect(4)
                        .symbolEffect(.pulse, isActive: isActive)
                    Button(isActive ? "Active" : "Inactive") {
                        isActive.toggle()
                    }
                }
                Spacer()
            }
            Spacer()
        }
    }
}

#Preview {
    PulseEffectView()
}
