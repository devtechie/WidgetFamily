///**
/**

WidgetFamilyExtension
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/26/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import SwiftUI

struct QuoteEntryView: View {
    let entry: QuoteEntry
    
    var body: some View {
        ZStack {
            Color.random(opacity: 0.6)
            Text("\(entry.quote.quoteText)\n-\(entry.quote.quoteAuthor)")
                .bold()
                .foregroundColor(.white)
                .padding()
        }.edgesIgnoringSafeArea(.all)
    }
}

