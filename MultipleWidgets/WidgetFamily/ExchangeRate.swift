///**
/**

WidgetFamilyExtension
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/26/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import Foundation

struct ExchangeRate: Decodable {
    let INR: Double
    let USD: Double
}

struct ExchangeRateResponse: Decodable {
    let rates: ExchangeRate
    let date: String
}
