//
//  ContactsDeatailView.swift
//  ContactListWithSwiftUI
//
//  Created by Алишер Маликов on 24.01.2023.
//

import SwiftUI

struct ContactsDeatailView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    let person: Person
        
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
            Label("\(person.phone)", systemImage: "phone")
            Label("\(person.email)", systemImage: "tray")
        }
        .navigationTitle(person.title)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                btnBack
            }
            
        }
    }
    
    private var btnBack : some View { Button(action: {
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
}

struct ContactsDeatailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsDeatailView(person: Person.getContactList().first!)
    }
}
