//
//  ContentView.swift
//  ContentUnavailableView
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 22/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ContentUnavailableView(label: {
                /*@START_MENU_TOKEN@*/Label("No Mail", systemImage: "tray.fill")/*@END_MENU_TOKEN@*/
            }, description: {
                /*@START_MENU_TOKEN@*/Text("New mails you receive will appear here.")/*@END_MENU_TOKEN@*/
            }, actions: {
                Button {
                    
                }label: {
                    Text("Go back to main view...")
                        .font(.callout)
                        .foregroundStyle(.blue)
                }
            })
//     if searchResultsForHaha.isEmpty {
        ContentUnavailableView.search(text: "haha")
//     }
        }
    }
}

#Preview {
    ContentView()
}
