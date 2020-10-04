///**
/**

WidgetFamilyExtension
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/26/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import UIKit

struct ExchangeRateManager {
    static func currentRate(complete: @escaping (ExchangeRate) -> Void) {
        URLSession.shared.dataTask(with: URL(string: "https://api.exchangeratesapi.io/latest?base=USD&symbols=USD,INR")!) { data, response, error in
            
            guard error == nil else { return }
            
            let response = try? JSONDecoder().decode(ExchangeRateResponse.self, from: data!)
            
            if let exchangeRate = response {
                complete(exchangeRate.rates)
            }
            
        }.resume()
    }
}
