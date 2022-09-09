//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Алексей on 08.09.2022.
//

import SwiftUI

enum CurrentLight {
    case red
    case yellow
    case green
}

struct ContentView: View {
    
    @State private var currentLight = CurrentLight.red
    @State private var buttonTitle = "START"
    
    @State private var redOpacity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack {
                CircleView(
                    color: .red,
                    opacity: redOpacity
                )
                CircleView(
                    color: .yellow,
                    opacity: yellowOpacity
                )
                CircleView(
                    color: .green,
                    opacity: greenOpacity
                )
                Spacer()
                ButtonView(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    switch currentLight {
                    case .red :
                        greenOpacity = 0.3
                        redOpacity = 1
                        currentLight = CurrentLight.yellow
                    case .yellow :
                        redOpacity = 0.3
                        yellowOpacity = 1
                        currentLight = CurrentLight.green
                    case .green :
                        yellowOpacity = 0.3
                        greenOpacity = 1
                        currentLight = CurrentLight.red
                    }
                }
            }
            .padding()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
