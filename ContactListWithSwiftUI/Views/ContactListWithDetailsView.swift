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
                    Label("\(person.phone)", systemImage: "phone")
                    Label("\(person.email)", systemImage: "tray")
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
