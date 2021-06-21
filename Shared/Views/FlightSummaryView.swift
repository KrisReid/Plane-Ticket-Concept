//
//  FlightSummaryView.swift
//  Tickets
//
//  Created by Kris Reid on 21/01/2021.
//

import SwiftUI

struct FlightSummaryView: View {
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                Text("LAX")
                    .locationTitleStyle()
                Text("Los Angles")
                    .locationSubtitleStyle()
            }
            .padding(.leading, 20)
            
            Spacer()
            
            VStack () {
                Image(systemName: "airplane")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color(#colorLiteral(red: 0.9988027215, green: 0.8084598184, blue: 0.6404181719, alpha: 1)))
                    .font(.system(size: 10, weight: .ultraLight))
                    .frame(height: 25)
                
                Text("10h 45m")
                    .locationSubtitleStyle()
            }
            
            Spacer()
            
            VStack (alignment: .trailing) {
                Text("LHR")
                    .locationTitleStyle()
                Text("London")
                    .locationSubtitleStyle()
            }
            .padding(.trailing, 20)
            
        }
        .padding(.vertical, 60)
    }
}

struct FlightSummary_Previews: PreviewProvider {
    static var previews: some View {
        FlightSummaryView()
            .background(Color(#colorLiteral(red: 0.239528656, green: 0.348085016, blue: 0.3378574252, alpha: 1)))
    }
}
