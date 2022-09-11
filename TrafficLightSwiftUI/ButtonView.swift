//
//  ButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Алексей on 08.09.2022.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    let completion: () -> Void
    
    var body: some View {
        Button(action: { completion() }) {
            Text(title)
                .font(.title)
                .foregroundColor(.white)
                .frame(width: 180, height: 50)
                .background(Color.blue)
                .cornerRadius(15)
            
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "button") {
            print(5)
        }
    }
}
