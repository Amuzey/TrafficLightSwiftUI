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
                Circle()
                    .foregroundColor(.red)
                    .frame(width: 130, height: 130)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: 130, height: 130)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                Circle()
                    .foregroundColor(.green)
                    .frame(width: 130, height: 130)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                Spacer()
                Button(action: { tapCount += 1 }) {
                    Text("START: \(tapCount)")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 180, height: 50)
                        .background(Color.blue)
                        .cornerRadius(15)
                }
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
