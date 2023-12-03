//
//  ScaleEffect.swift
//  SymbolEffects
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 03/12/2023.
//

import SwiftUI

struct ScaleEffect: View {
    @State var isActive = false
    var body: some View {
        VStack{
            Text("Scale")
                .font(.largeTitle)
                .padding(.top, 50)
            Text("Indefinite")
            Spacer()
            VStack{
                Image(systemName: "wifi")
                    .scaleEffect(6)
                    .symbolEffect(.scale.down, isActive: isActive )
                Button("Toggle") {
                    isActive.toggle()
                }
                .padding(.top, 50)
            }
            Spacer()
        }
        
    }
}

#Preview {
    ScaleEffect()
}
