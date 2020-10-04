///**
/**
 
 WidgetFamilyExtension
 CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/26/20
 COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC
 
 */

import WidgetKit
import SwiftUI

struct QuotesTimelineProvider: TimelineProvider {
    
    typealias Entry = QuoteEntry
    
    func placeholder(in context: Context) -> QuoteEntry {
        let entry = QuoteEntry(date: Date(), quote: Quote(quoteText: "Nothing is a waste of time if you use the experience wisely.", quoteAuthor: "Rodin"))
        return entry
    }
    
    func getSnapshot(in context: Context, completion: @escaping (QuoteEntry) -> Void) {
        let entry = QuoteEntry(date: Date(), quote: Quote(quoteText: "Nothing is a waste of time if you use the experience wisely.", quoteAuthor: "Rodin"))
        completion(entry)
    }
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<QuoteEntry>) -> Void) {
        let currentDate = Date()
        let refreshDate = Calendar.current.date(byAdding: .minute, value: 10, to: currentDate)!
        
        QuotesManager.getQuote { (quote) in
            guard let q = quote else { return }
            
            let entry = QuoteEntry(date: currentDate, quote: q)
            let timeline = Timeline(entries: [entry], policy: .after(refreshDate))
            completion(timeline)
        }
    }
   
}
