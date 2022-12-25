//
//  ContentView.swift
//  Contacts
//
//  Created by obuke on 25/12/2022.
//

import SwiftUI

struct ContentView: View {
    let contact: Contact
    
    var body: some View {
        VStack{
                 CircularImg()
 
            VStack(alignment: .leading){
                Text(contact.name + " " + contact.last_name)
                    .font(.title)
                
                HStack{
                    Text(contact.phone_number)
                    Spacer()
                    Text(contact.note)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                }
            .padding()
            
            Spacer()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(contact: loadContacts[2])
    }
}
