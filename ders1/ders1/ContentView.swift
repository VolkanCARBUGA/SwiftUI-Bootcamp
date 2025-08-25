//
//  ContentView.swift
//  ders1
//
//  Created by Volkan Çarbuğa on 23.08.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let name="volkan"
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.indigo)
            Text("Hello, \(name)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding()
            Text("Nasılsun").font(.headline)
        }//vStack
        Spacer(minLength: 100).padding(40)
        HStack{
           
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.red)
                .fontWeight(.black )
            Text("Hello, \(name)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.red)
                .padding()
            Text("Nasılsın")
                .font(.headline)
                .fontWeight(.bold)
                .font(.system(size: 20, weight: .bold, design: .default))
                .padding()
        }
        .padding()
    }//body
}

#Preview {
    Stockview()
}
