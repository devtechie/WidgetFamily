///**
/**
 
 WidgetFamilyExtension
 CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/26/20
 COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC
 
 */

import WidgetKit
import SwiftUI

struct QuotesWidget: Widget {
    private let kind: String = "QuotesWidget"
    
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: QuotesTimelineProvider()) { (entry) in
            QuoteEntryView(entry: entry)
        }
        .supportedFamilies([.systemMedium, .systemLarge])
        .configurationDisplayName("Famous Quotes")
        .description("This widget shows famous quotes")
    }
}
