//
//  ContactRow.swift
//  Contacts
//
//  Created by obuke on 25/12/2022.
//

import SwiftUI

struct ContactRow: View {
    let contact: Contact
    
    var body: some View {
        HStack{
           // landmark.image
              //  .resizable()
              //  .frame(width: 50, height: 50)
            Text(contact.name)
            
            Spacer()
        }
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(contact: loadContacts[0])
    }
}

