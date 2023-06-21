//
//  InfoView.swift
//  AndrePortoCard
//
//  Created by André Porto on 20/06/23.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .foregroundColor(Color(red: 0.01, green: 0.35, blue: 0.34))
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(Color(red: 0.01, green: 0.35, blue: 0.34))
                Text(text)
            })
            .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
