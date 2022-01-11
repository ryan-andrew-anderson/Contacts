//
//  Contacts.swift
//  Contacts
//
//  Created by Ryan Anderson on 1/10/22.
//

import Foundation

struct Contact: Codable {
    let name : String
    let number : String
    let email : String
    
    static let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    
    static let archiveURL = documentsDirectory.appendingPathComponent("Contacts").appendingPathExtension("plist")
    
    static func saveToFile(contacts: [Contact]) {
        let propertyListEncoder = PropertyListEncoder()
        let encodedContants = try? propertyListEncoder.encode(contacts)
        try? encodedContants?.write(to: archiveURL, options: .noFileProtection)
    }
    
    static func loadFromFile() -> [Contact] {
        let propertyListDecoder = PropertyListDecoder()
        if let retivedContactsData = try? Data(contentsOf: archiveURL),
           let decodedContacts = try? propertyListDecoder.decode(Array <Contact>.self, from: retivedContactsData) {
            return decodedContacts
        }
        return[]
    }
}
