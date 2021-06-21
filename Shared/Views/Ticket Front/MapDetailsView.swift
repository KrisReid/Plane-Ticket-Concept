//
//  MapDetailsView.swift
//  Tickets
//
//  Created by Kris Reid on 21/01/2021.
//

import SwiftUI

struct MapDetailsView: View {
    var body: some View {
        HStack (alignment: .top) {
            VStack {
                Image("emirates_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                
                Image(systemName: "airplane")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color(#colorLiteral(red: 0.9988027215, green: 0.8084598184, blue: 0.6404181719, alpha: 1)))
                    .font(.system(size: 10, weight: .ultraLight))
                    .frame(height: 20)
                    .padding(.top, 5)
                
                Text("Ticket Price")
                    .font(.system(size: 13, weight: .light))
                    .foregroundColor(Color(#colorLiteral(red: 0.6321926713, green: 0.7486357093, blue: 0.7466378808, alpha: 1)))
                    .padding(.top, 5)
                
                Text("£2,749.00")
                    .font(.system(size: 13, weight: .light))
                    .foregroundColor(Color(#colorLiteral(red: 0.239528656, green: 0.348085016, blue: 0.3378574252, alpha: 1)))
                    .padding(.top, 1)
                
            }
            .padding(.horizontal, 20)
            .padding(.top, 1)
            
            Spacer()
            
            Image("flight_details")
                .resizable()
                .scaledToFit()
                .frame(height: 110)
        }
        .padding()
    }
}

struct MapDetails_Previews: PreviewProvider {
    static var previews: some View {
        MapDetailsView()
    }
}
