//
//  File.swift
//  Day60Challenge
//
//  Created by Shane on 29/10/2020.
//

import Foundation

struct User: Codable, Identifiable {
    let id: String
    let isActive: Bool
    let name: String
    let age: Int
    let company: String
    let email: String
    let address: String
    let about: String
    let registered: Date
    let tags: [String]
    let friends: [Friend]
    
    var formattedRegisteredDate: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter.string(from: registered)
    }
}
