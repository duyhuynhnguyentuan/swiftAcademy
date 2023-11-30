//
//  BounceEffectView.swift
//  SymbolEffects
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 30/11/2023.
//

import SwiftUI

struct BounceEffectView: View {
    @State var trigger = 0
    @State var trigger2 = false
    var body: some View {
        VStack{
            Text("Bounce animation")
                .font(.largeTitle)
                .padding(.top, 50)
            Text("Discrete")
            //Discrete:  when you trigger the bounce effect, it happens once and it return to the normal state
            Spacer()
            Image(systemName: "wifi.exclamationmark")
                .scaleEffect(4)
            //it could be any type of value that can trigger the value
                .symbolEffect(.bounce.byLayer, value: trigger2)
            Button("Trigger"){
//                trigger += 1
                trigger2.toggle()
            }
            .padding(.top, 50)
            Spacer()
        }
    }
}

#Preview {
    BounceEffectView()
}
