//
//  ContactListView.swift
//  ContactListWithSwiftUI
//
//  Created by Алишер Маликов on 24.01.2023.
//

import SwiftUI

struct ContactListView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons, id: \.id) { person in
                NavigationLink(destination: ContactsDeatailView(person: person)) {
                    Text(person.title)
                }
            }
            .navigationTitle("Contact List")
            .listStyle(.plain)
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getContactList())
    }
}
