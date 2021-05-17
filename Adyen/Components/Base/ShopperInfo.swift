//
// Copyright (c) 2021 Adyen N.V.
//
// This file is open source and available under the MIT license. See the LICENSE file for more info.
//

import Foundation

/// A structure that contains information about the shopper
public struct ShopperInfo: ShopperInformation, BillingAddressInformation, SocialSecurityNumberInformation {

    /// The name of the shopper.
    public var shopperName: ShopperName?
    
    /// The email address.
    public var emailAddress: String?
    
    /// The telephone number.
    public var telephoneNumber: String?
    
    /// The billing address information.
    public var billingAddress: AddressInfo?
    
    /// The social secuity number
    public var socialSecurityNumber: String?
    
    /// Initializes the ShopperInfo struct
    /// - Parameters:
    ///   - shopperName: The name of the shopper, optional.
    ///   - emailAddress: The email of the shopper, optional.
    ///   - telephoneNumber: The telephone number of the shopper, optional.
    ///   - billingAddress: The billing address of the shopper, optional.
    ///   - socialSecurityNumber: The social security number of the shopper, optional.
    public init(
        shopperName: ShopperName? = nil,
        emailAddress: String? = nil,
        telephoneNumber: String? = nil,
        billingAddress: AddressInfo? = nil,
        socialSecurityNumber: String? = nil
    ) {
        self.shopperName = shopperName
        self.emailAddress = emailAddress
        self.telephoneNumber = telephoneNumber
        self.billingAddress = billingAddress
        self.socialSecurityNumber = socialSecurityNumber
    }
    
}
