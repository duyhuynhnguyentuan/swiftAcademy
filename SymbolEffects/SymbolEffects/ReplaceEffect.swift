//
//  ReplaceEffect.swift
//  SymbolEffects
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 03/12/2023.
//

import SwiftUI

struct ReplaceEffect: View {
    @State var isOn = false
    var body: some View {
        VStack{
            Text("Replace")
                .font(.largeTitle)
                .padding(.top, 50)
            Text("Content Transition")
            Spacer()
            Image(systemName:  isOn ?  "moon" : "sun.max")
                .scaleEffect(5)
                .contentTransition(.symbolEffect(.replace))
            Button(isOn ? "Night mode" : "Light mode") {
                isOn.toggle()
            }
            .padding(.top, 50)
            Spacer()
        }
    }
}

#Preview {
    ReplaceEffect()
}
