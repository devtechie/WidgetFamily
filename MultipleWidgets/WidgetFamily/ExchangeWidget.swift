///**
/**
 
 WidgetFamilyExtension
 CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/26/20
 COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC
 
 */

import Foundation
import WidgetKit
import SwiftUI

struct ExchangeWidget: Widget {
    private let kind: String = "ExchangeWidget"
    
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: ExchangeTimelineProvider()) { (entry) in
            ExchangeRateEntryView(entry: entry)
        }
        .supportedFamilies([.systemSmall])
        .configurationDisplayName("Current Exchange Rate")
        .description("This widget shows exchange rate USD - INR")
    }
}
