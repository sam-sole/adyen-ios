//
// Copyright (c) 2021 Adyen N.V.
//
// This file is open source and available under the MIT license. See the LICENSE file for more info.
//

import Foundation

/// The model to create an installments object.
public struct Installments: Encodable, Equatable {
    
    public enum Plan: String {
        /// Regular, monthly installment payments.
        case regular
        
        /// Revolving plan, specific to some countries.
        case revolving
    }
    
    /// Selected total month of installments
    public let totalMonths: Int
    
    /// Selected plan
    public let plan: Plan
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(totalMonths, forKey: .totalMonths)
        try container.encode(plan.rawValue, forKey: .plan)
    }
    
    private enum CodingKeys: String, CodingKey {
        case totalMonths = "value"
        case plan
    }
    
    /// Creates a new `Installments` instance with default value options.
    public init(totalMonths: Int, plan: Plan) {
        self.totalMonths = totalMonths
        self.plan = plan
    }
}
