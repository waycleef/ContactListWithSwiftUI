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
        var id = DataStore.shared.id
        var names = DataStore.shared.names
        var surnames = DataStore.shared.surnames
        var phones = DataStore.shared.phones
        var emails = DataStore.shared.emails
        
        var persons: [Person] = []
        for _ in 0..<names.count {
            var idValue = 0
            var nameValue = ""
            var surnameValue = ""
            var phoneValue = ""
            var emailValue = ""
            
            if let idIndex = id.indices.randomElement() {
                idValue = id.remove(at: idIndex)
            }
            
            if let nameIndex = names.indices.randomElement() {
                nameValue = names.remove(at: nameIndex)
            }
            
            if let surnameIndex = surnames.indices.randomElement() {
                surnameValue = surnames.remove(at: surnameIndex)
            }
            
            if let phoneIndex = phones.indices.randomElement() {
                phoneValue = phones.remove(at: phoneIndex)
            }
            
            if let emailIndex = emails.indices.randomElement() {
                emailValue = emails.remove(at: emailIndex)
            }
            
            persons.append(Person(id: idValue,
                                  name: nameValue,
                                  surname: surnameValue,
                                  phone: phoneValue,
                                  email: emailValue))
            
        }
        return persons
    }
}

enum Contactcs: String {
    case phone = "phone"
    case email = "tray"
}
