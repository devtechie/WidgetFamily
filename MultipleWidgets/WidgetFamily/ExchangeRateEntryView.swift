///**
/**
 
 WidgetFamilyExtension
 CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/26/20
 COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC
 
 */

import SwiftUI

struct ExchangeRateEntryView: View {
    let entry: ExchangeEntry
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9567781091, green: 0.9608382583, blue: 0.9685122371, alpha: 1))
            VStack(spacing: 10) {
                HStack(spacing: 5) {
                    Text("$")
                        .font(.largeTitle)
                        .padding(10)
                        .background(Color(#colorLiteral(red: 0.9567781091, green: 0.9608382583, blue: 0.9685122371, alpha: 1)))
                        .clipShape(Circle())
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                        .shadow(color: Color.white.opacity(0.7), radius: 5, x: -5, y: -5)
                    Text(String(format: "%0.02f", entry.exchangeRate.USD))
                        .bold()
                        .foregroundColor(Color.black.opacity(0.7))
                }
                HStack(spacing: 5) {
                    Text("₹")
                        .font(.largeTitle)
                        .padding(10)
                        .background(Color(#colorLiteral(red: 0.9567781091, green: 0.9608382583, blue: 0.9685122371, alpha: 1)))
                        .clipShape(Circle())
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                        .shadow(color: Color.white.opacity(0.7), radius: 5, x: -5, y: -5)
                    Text(String(format: "%0.02f", entry.exchangeRate.USD))
                        .bold()
                        .foregroundColor(Color.black.opacity(0.7))
                }
            }.padding()
        }.edgesIgnoringSafeArea(.all)
    }
}
