//
//  VariableColorEffect.swift
//  SymbolEffects
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 03/12/2023.
//


import SwiftUI

struct VariableColorEffect: View {
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
                    Image(systemName: "waveform.badge.minus")
                        .scaleEffect(4)
                        .symbolEffect(.variableColor.iterative.hideInactiveLayers.nonReversing, value: trigger)
                    Button("Trigger") {
                        trigger += 1
                    }
                }
                Spacer()
                VStack(spacing: 50){
                    Image(systemName: "waveform.badge.minus")
                        .scaleEffect(4)
                        .symbolEffect(.variableColor.iterative.dimInactiveLayers.nonReversing, isActive: isActive)
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
    VariableColorEffect()
}
