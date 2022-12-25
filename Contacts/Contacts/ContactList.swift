//
//  ContactList.swift
//  Contacts
//
//  Created by obuke on 25/12/2022.
//

import SwiftUI

struct ContactList: View {
    var body: some View {
        NavigationView {
            List(loadContacts, id: \.self) { contact in
                NavigationLink{
                    ContentView(contact: contact)
                } destination: {
                    ContactRow(contact: contact)
            }
          }
        
            .navigationTitle("Contacts")
            
    }
  }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList()
    }
}

