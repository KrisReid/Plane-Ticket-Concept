//
//  FlightDetailsView.swift
//  Tickets
//
//  Created by Kris Reid on 21/01/2021.
//

import SwiftUI


struct FlightDetailsView: View {
    var body: some View {
        VStack (spacing: 20) {
            HStack {
                VStack (alignment: .leading, spacing: 10) {
                    Text("FLIGHT DATE")
                        .titleStyle()
                    Text("May 19")
                        .normalStyle()
                }
                Spacer()
                VStack (spacing: 10) {
                    Text("GATE")
                        .titleStyle()
                    Text("A1")
                        .normalStyle()
                }
                Spacer()
                VStack (alignment: .trailing, spacing: 10) {
                    Text("FLIGHT NO")
                        .titleStyle()
                    Text("KB82")
                        .normalStyle()
                }
            }.padding(.horizontal, 30)
            
            HStack {
                VStack (alignment: .leading, spacing: 10) {
                    Text("BOARDING TIME")
                        .titleStyle()
                    Text("20:00")
                        .normalStyle()
                }
                Spacer()
                VStack (spacing: 10) {
                    Text("SEAT")
                        .titleStyle()
                    Text("12 A")
                        .normalStyle()
                }
                Spacer()
                VStack (alignment: .trailing, spacing: 10) {
                    Text("CLASS")
                        .titleStyle()
                    Text("Business")
                        .normalStyle()
                }
            }.padding(.horizontal, 30)
        }.padding(.vertical, 10)
    }
}

struct FlightDetails_Previews: PreviewProvider {
    static var previews: some View {
        FlightDetailsView()
    }
}
