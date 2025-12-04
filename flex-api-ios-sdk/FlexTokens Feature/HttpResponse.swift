//
//  FlexTransientTokenResponse.swift
//  flex_api_ios_sdk
//
//  Created by Rakesh Ramamurthy on 05/04/21.
//

import Foundation

struct HttpResponse: Equatable {
    static func == (lhs: HttpResponse, rhs: HttpResponse) -> Bool {
        return lhs.status == rhs.status && lhs.body == rhs.body
    }
    let status: Int
    let body: String?
    let headers: [AnyHashable: Any]?

    init(status: Int, body: String?, headers: [AnyHashable: Any]?) {
        self.status = status
        self.body = body
        self.headers = headers
    }
    func isValidResponse() -> Bool {
        (200...299).contains(self.status)
    }
    func getValue(for key: String) -> String? {
        // attempt to get header value using exact key
        if let field = self.headers?[key] as? String {
            return field
        }

        // Then try case-insensitive match if needed
        return self.headers?.first(where: {
            ($0.key as? String)?.lowercased() == key.lowercased()
        })?.value as? String
    }
}
