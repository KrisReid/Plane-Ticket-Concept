//
//  Header.swift
//  Tickets
//
//  Created by Kris Reid on 21/01/2021.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack {
            Image(systemName: "arrow.backward")
                .resizable()
                .scaledToFit()
                .foregroundColor(.white)
                .font(.system(size: 10, weight: .ultraLight))
                .frame(width: 30)
            
            Spacer()
            
            Image("eleanor")
                .resizable()
                .scaledToFill()
                .frame(width: 70, height: 70)
                .cornerRadius(15)
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
            .background(Color(#colorLiteral(red: 0.239528656, green: 0.348085016, blue: 0.3378574252, alpha: 1)))
    }
}
