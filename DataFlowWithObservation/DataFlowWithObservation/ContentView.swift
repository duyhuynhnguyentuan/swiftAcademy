//
//  ContentView.swift
//  DataFlowWithObservation
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 20/11/2023.
//

import SwiftUI
import Observation
@Observable
class ViewModel {
   init(){}
   var followerCount = 1
    //This time, if the var name is changed, this won't refresh the View because the var is not used in the View
   var name = "toighetcode"
}
struct ContentView: View {
    var viewModel = ViewModel()
    var body: some View {
        VStack{
            Text("@toighetcode")
                .fontDesign(.monospaced)
                .padding()
            Text("\(viewModel.followerCount)")
                .font(.system(size: 32, weight: .semibold))
            Text("Followers")
                .font(.system(size: 32, weight: .semibold))
            Button{
             
                    viewModel.followerCount += 1
                
            }label: {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .stroke(lineWidth: 1.5)
                    .frame(width: UIScreen.main.bounds.width * 0.5,height: 40)
                    .overlay(
                        Text("Add follower")
                            .font(.system(size: 22, weight: .semibold))
                    )
                
            }.padding(.top)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
