//
//  ContentView.swift
//  Shared
//
//  Created by Kris Reid on 20/01/2021.
//

import SwiftUI
import CoreImage.CIFilterBuiltins


struct ContentView: View {
    
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    
    func generateQRCode(from string: String) -> UIImage {
        let data = Data(string.utf8)
        filter.setValue(data, forKey: "inputMessage")

        if let outputImage = filter.outputImage {
            if let cgimg = context.createCGImage(outputImage, from: outputImage.extent) {
                return UIImage(cgImage: cgimg)
            }
        }

        return UIImage(systemName: "xmark.circle") ?? UIImage()
    }
    
    
    var body: some View {
        
        ZStack (alignment: .topLeading) {

            Color(#colorLiteral(red: 0.2567760944, green: 0.3597440124, blue: 0.3538631499, alpha: 1))
            
            VStack {
                Header()
                
                FlightSummary()
                
                VStack {
                    
                    TopFrontCard()
                    Divider()
                    FightDetails()
                    Divider()
                    
                    
                    Spacer()
                    
                    Image(uiImage: generateQRCode(from: "KrisReid"))
                        .interpolation(.none)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 120)
                    
                    Spacer()

                }
                .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                .frame(width: UIScreen.main.bounds.width - 30, height: UIScreen.main.bounds.height - 340)
                .cornerRadius(25)
  
            }
            .padding(.horizontal, 20)
            .padding(.top, 40)
            
            
  
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .ignoresSafeArea()

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


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

struct FlightSummary: View {
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                Text("LAX")
                    .font(.system(size: 46, weight: .light))
                    .foregroundColor(Color(#colorLiteral(red: 0.9988027215, green: 0.8084598184, blue: 0.6404181719, alpha: 1)))
                Text("Los Angles")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
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
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            }
            
            Spacer()
            
            VStack (alignment: .trailing) {
                Text("LHR")
                    .font(.system(size: 46, weight: .light))
                    .foregroundColor(Color(#colorLiteral(red: 0.9988027215, green: 0.8084598184, blue: 0.6404181719, alpha: 1)))
                Text("London")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            }
            .padding(.trailing, 20)
            
        }
        .padding(.vertical, 60)
    }
}

struct TopFrontCard: View {
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

struct FightDetails: View {
    var body: some View {
        VStack (spacing: 20) {
            HStack {
                VStack (alignment: .leading, spacing: 10) {
                    Text("FLIGHT DATE")
                        .font(.system(size: 13, weight: .regular))
                        .foregroundColor(Color(#colorLiteral(red: 0.6321926713, green: 0.7486357093, blue: 0.7466378808, alpha: 1)))
                    Text("May 19")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(Color(#colorLiteral(red: 0.239528656, green: 0.348085016, blue: 0.3378574252, alpha: 1)))
                }
                Spacer()
                VStack (spacing: 10) {
                    Text("GATE")
                        .font(.system(size: 13, weight: .regular))
                        .foregroundColor(Color(#colorLiteral(red: 0.6321926713, green: 0.7486357093, blue: 0.7466378808, alpha: 1)))
                    Text("A1")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(Color(#colorLiteral(red: 0.239528656, green: 0.348085016, blue: 0.3378574252, alpha: 1)))
                }
                Spacer()
                VStack (alignment: .trailing, spacing: 10) {
                    Text("FLIGHT NO")
                        .font(.system(size: 13, weight: .regular))
                        .foregroundColor(Color(#colorLiteral(red: 0.6321926713, green: 0.7486357093, blue: 0.7466378808, alpha: 1)))
                    Text("KB82")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(Color(#colorLiteral(red: 0.239528656, green: 0.348085016, blue: 0.3378574252, alpha: 1)))
                }
            }.padding(.horizontal, 30)
            
            HStack {
                VStack (alignment: .leading, spacing: 10) {
                    Text("BOARDING TIME")
                        .font(.system(size: 13, weight: .regular))
                        .foregroundColor(Color(#colorLiteral(red: 0.6321926713, green: 0.7486357093, blue: 0.7466378808, alpha: 1)))
                    Text("20:00")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(Color(#colorLiteral(red: 0.239528656, green: 0.348085016, blue: 0.3378574252, alpha: 1)))
                }
                Spacer()
                VStack (spacing: 10) {
                    Text("SEAT")
                        .font(.system(size: 13, weight: .regular))
                        .foregroundColor(Color(#colorLiteral(red: 0.6321926713, green: 0.7486357093, blue: 0.7466378808, alpha: 1)))
                    Text("12 A")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(Color(#colorLiteral(red: 0.239528656, green: 0.348085016, blue: 0.3378574252, alpha: 1)))
                }
                Spacer()
                VStack (alignment: .trailing, spacing: 10) {
                    Text("CLASS")
                        .font(.system(size: 13, weight: .regular))
                        .foregroundColor(Color(#colorLiteral(red: 0.6321926713, green: 0.7486357093, blue: 0.7466378808, alpha: 1)))
                    Text("BUSINESS")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(Color(#colorLiteral(red: 0.239528656, green: 0.348085016, blue: 0.3378574252, alpha: 1)))
                }
            }.padding(.horizontal, 30)
        }.padding(.vertical, 10)
    }
}
