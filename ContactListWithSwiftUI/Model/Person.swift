//
//  Person.swift
//  ContactListWithSwiftUI
//
//  Created by Алишер Маликов on 24.01.2023.
//

import Foundation

struct Person {
    
    let id: Int
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var title: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let phones = DataStore.shared.phones.shuffled()
        let emails = DataStore.shared.emails.shuffled()

        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                id: index + 1,
                name: names[index],
                surname: surnames[index],
                phone: phones[index],
                email: emails[index]
            )
            
            persons.append(person)

        }
        return persons
    }
}

enum Contactcs: String {
    case phone = "phone"
    case email = "tray"
}
