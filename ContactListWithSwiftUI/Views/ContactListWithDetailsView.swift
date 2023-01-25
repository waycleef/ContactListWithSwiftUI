//
//  ContactListWithDetailsView.swift
//  ContactListWithSwiftUI
//
//  Created by Алишер Маликов on 24.01.2023.
//

import SwiftUI

struct ContactListWithDetailsView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons, id: \.id) { person in
                Section(header: Text(person.title)) {
                    HStack{
                        Image(systemName: "phone")
                            .foregroundColor(.blue)
                        Text(person.phone)
                    }
                    HStack{
                        Image(systemName: "tray")
                            .foregroundColor(.blue)
                        Text(person.email)
                    }
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContactListWithDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListWithDetailsView(persons: Person.getContactList())
    }
}
