///**
/**

WidgetFamilyExtension
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/26/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import Foundation

struct QuotesManager {
    static func getQuote(completion: @escaping (Quote?) -> Void) {
        URLSession.shared.dataTask(with: URL(string: "https://api.forismatic.com/api/1.0/?method=getQuote&lang=en&format=json")!) { data, response, error in
            guard error == nil else { return }
            let quote = try? JSONDecoder().decode(Quote.self, from: data!)
            completion(quote)
        }.resume()
    }
}
