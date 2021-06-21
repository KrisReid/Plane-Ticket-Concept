//
//  TicketBackView.swift
//  Tickets
//
//  Created by Kris Reid on 21/01/2021.
//

import SwiftUI

struct TicketBackView: View {
    var body: some View {
        VStack {
            MapDetailsView()
            Divider()
            FlightDetailsView()
            Divider()
        }
        .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
        .frame(width: UIScreen.main.bounds.width - 30, height: UIScreen.main.bounds.height - 340)
        .cornerRadius(25)
        .rotation3DEffect(
            .degrees(180),
            axis: (x: 0.0, y: 1.0, z: 0.0)
        )
    }
}

struct TicketBackView_Previews: PreviewProvider {
    static var previews: some View {
        TicketBackView()
    }
}
