//
//  ContactsDeatailView.swift
//  ContactListWithSwiftUI
//
//  Created by Алишер Маликов on 24.01.2023.
//

import SwiftUI

struct ContactsDeatailView: View {
    
    let person: Person
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var btnBack : some View { Button(action: {
        self.presentationMode.wrappedValue.dismiss()
    }) {
        HStack {
            Image(systemName: "chevron.left")
                .foregroundColor(.blue)
                .aspectRatio(contentMode: .fit)
            Text("Back")
        }
    }
    }
    
    var body: some View {
        
        List {
            HStack{
                Spacer()
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .padding()
                Spacer()
            }
            
            
            HStack {
                Image(systemName: "phone")
                    .foregroundColor(.blue)
                Text(person.phone)
            }
            
            HStack {
                Image(systemName: "tray")
                    .foregroundColor(.blue)
                Text(person.email)
            }
        }
        .navigationTitle(person.title)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                btnBack
            }
            
        }
    }
}

struct ContactsDeatailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsDeatailView(person: Person.getContactList()[0])
    }
}
