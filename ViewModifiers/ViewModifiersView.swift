//
//  ContentView.swift
//  ViewModifiers
//
//  Created by Skorobogatow, Christian on 2/8/22.
//

import SwiftUI


struct DefaultButtonViewModifier: ViewModifier {
    
    let backgroundColor: Color
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .cornerRadius(10)
    }
}


extension View {
    func withDefaultButtonFormatting(backgroundColor: Color = .blue) -> some View {
        modifier(DefaultButtonViewModifier(backgroundColor: backgroundColor))
    }
}

struct ViewModifiersView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Hello, world!")
                .font(.headline)
                .withDefaultButtonFormatting()
            
            Text("Hello There!")
                .font(.subheadline)
                .withDefaultButtonFormatting(backgroundColor: .pink)
            
            Text("Hello!")
                .font(.title)
                .modifier(DefaultButtonViewModifier(backgroundColor: .orange))
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifiersView()
    }
}
