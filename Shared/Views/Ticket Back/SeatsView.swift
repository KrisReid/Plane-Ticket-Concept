//
//  Seats.swift
//  Tickets
//
//  Created by Kris Reid on 21/01/2021.
//

import SwiftUI

struct Seats: View {
    var body: some View {
        
        HStack {
            VStack {
                ForEach(0..<6) { index in
                    
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color(#colorLiteral(red: 0.9988027215, green: 0.8084598184, blue: 0.6404181719, alpha: 1)), style: StrokeStyle(lineWidth: 1))
                        .frame(width: 32, height: 40)
                        
                }
            }
            .offset(y: 95)
            .offset(x: -90)
            .padding(.horizontal, 40)
            
            VStack {
                ForEach(0..<6) { index in
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color(#colorLiteral(red: 0.9988027215, green: 0.8084598184, blue: 0.6404181719, alpha: 1)), style: StrokeStyle(lineWidth: 1))
                        .frame(width: 32, height: 40)
                }
            }
            .offset(y: 95)
            .offset(x: -90)
        }
    }
}

struct Seats_Previews: PreviewProvider {
    static var previews: some View {
        Seats()
    }
}
