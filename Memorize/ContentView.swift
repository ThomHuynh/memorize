//
//  ContentView.swift
//  Memorize
//
//  Created by Huynh, Luu-Quan Thom on 03.12.21.
//

import SwiftUI

struct ContentView: View {
    var vehicleEmojis = ["🚗", "🚒", "🚍", "🚝", "🚀", "⛵️", "🚲", "🚜"]
    
    var body: some View {
        VStack {
            Text("Memorize!").font(.title)
            ForEach(vehicleEmojis, id: (\.self)){ emoji in
                CardView(content: emoji)
            }
            HStack {
                Text("hey")
            }
        }.padding()
    }
    
}

struct CardView: View {
    let content: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .stroke(lineWidth: 3)
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.white)
            Text(content)
                .font(.largeTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
