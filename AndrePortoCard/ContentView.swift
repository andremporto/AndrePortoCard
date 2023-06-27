//
//  ContentView.swift
//  AndrePortoCard
//
//  Created by André Porto on 20/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.01, green: 0.35, blue: 0.34)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("andreporto")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("André Porto")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 23))
                Divider()
                InfoView(text: "+55 11 1111 1111", imageName: "phone.fill")
                InfoView(text: "andreporto@me.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
