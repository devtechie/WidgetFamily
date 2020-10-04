///**
/**

WidgetFamily
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/26/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import WidgetKit
import SwiftUI

@main
struct WidgetFamily: WidgetBundle {
    
    @WidgetBundleBuilder
    var body: some Widget {
        ExchangeWidget()
        QuotesWidget()
    }
}
