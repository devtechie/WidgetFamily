///**
/**

WidgetFamilyExtension
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/26/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import Foundation
import WidgetKit

struct ExchangeTimelineProvider: TimelineProvider {
    typealias Entry = ExchangeEntry
    
    func placeholder(in context: Context) -> ExchangeEntry {
        let entry = ExchangeEntry(date: Date(), exchangeRate: ExchangeRate(INR: 65.22, USD: 1.0))
        return entry
    }
    
    func getSnapshot(in context: Context, completion: @escaping (ExchangeEntry) -> Void) {
        let entry = ExchangeEntry(date: Date(), exchangeRate: ExchangeRate(INR: 65.22, USD: 1.0))
        completion(entry)
    }
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<ExchangeEntry>) -> Void) {
        let currentDate = Date()
        let refreshDate = Calendar.current.date(byAdding: .day, value: 1, to: currentDate)!
        
        ExchangeRateManager.currentRate { (rate) in
            let entry = ExchangeEntry(date: currentDate, exchangeRate: rate)
            let timeline = Timeline(entries: [entry], policy: .after(refreshDate))
            completion(timeline)
        }
    }
}
