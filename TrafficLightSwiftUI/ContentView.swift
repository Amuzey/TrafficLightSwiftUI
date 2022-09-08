//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Алексей on 08.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tapCount = 0
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack {
                CircleView(color: .red, opacity: 1)
                CircleView(color: .yellow, opacity: 0.5)
                CircleView(color: .green, opacity: 0.5)
                Spacer()
                ButtonView(title: "START")
            }
            .padding()
        }
    }
    
    private func startButtonTap() {
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
