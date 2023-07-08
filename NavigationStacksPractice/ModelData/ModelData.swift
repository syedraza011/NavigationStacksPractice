//
//  ModelData.swift
//  NavigationStacksPractice
//
//  Created by Syed Raza on 7/8/23.
//


import Foundation
import SwiftUI

enum CategoryType: String {
    case finance
    case education
    case crypto
}

struct Category: Identifiable {
    let id = UUID()
    let name: String
    let categoryType: CategoryType
    let color: Color
    
    static let mock = [
        Category(name: "Finance", categoryType: .finance, color: .blue),
        Category(name: "Education", categoryType: .education, color: .green),
        Category(name: "Crypto", categoryType: .crypto, color: .purple),
    ]
}

struct Company: Identifiable {
    let id = UUID()
    let name: String
    let categoryType: CategoryType

    static let mock = [
        Company(name: "Capital One", categoryType: .finance),
        Company(name: "Venmo", categoryType: .finance),
        Company(name: "PayPal", categoryType: .finance),
        Company(name: "Udemy", categoryType: .education),
        Company(name: "OpenSea", categoryType: .crypto),
        Company(name: "Quintrix Solutions", categoryType: .education),
        Company(name: "OKX", categoryType: .crypto)
    ]
}
