//
//  Appera.swift
//  SymbolEffects
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 03/12/2023.
//

import SwiftUI

struct AppearEffect: View {
    @State var isActive = false
    var body: some View {
        VStack{
            Text("Appear")
                .font(.largeTitle)
                .padding(.top, 50)
            Text("Indefinite, transition")
            Spacer()
            VStack{
                Image(systemName: "wifi.exclamationmark")
                    .scaleEffect(6)
                    .symbolEffect(.appear, isActive: isActive )
                Button(isActive ? "Visable" : "Hidden") {
                    isActive.toggle()
                }
                .padding(.top, 50)
            }
            Spacer()
        }
        
    }
}

#Preview {
    AppearEffect()
}
