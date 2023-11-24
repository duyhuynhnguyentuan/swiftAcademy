//
//  Tip.swift
//  TipTools
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 24/11/2023.
//

import Foundation
import TipKit

struct addColorTip : Tip {
    var title: Text {
        Text("Add new color")
            .foregroundStyle(.teal)
    }
    var message: Text? {
        Text("Tap here to add a new color to the list")
    }
    
    var image: Image? {
        Image(systemName: "paintpalette")
    }
    
}

struct addFavoriteTip : Tip {
    static let setFavoriteEvent = Event(id: "setFavorite")
    static let colorViewVistitedEvent = Event(id: "colorsViewVisited")
    var title: Text {
        Text("Set favorites")
            .foregroundStyle(.teal)
    }
    var message: Text? {
        Text("Tap and hold a color to see set favorite option")
    }
    
    var image: Image? {
        Image(systemName: "paintpalette")
    }
    var rules: [Rule] {
        #Rule(Self.setFavoriteEvent) { event in
            event.donations.count == 0
        }
        #Rule(Self.colorViewVistitedEvent) { event in
            event.donations.count > 2
        }
    }
    
}
