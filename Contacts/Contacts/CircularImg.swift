//
//  CircularImg.swift
//  Contacts
//
//  Created by obuke on 25/12/2022.
//

import SwiftUI

struct CircularImg: View {
    var body: some View {
        Image(systemName: "person.circle.fill")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .font(.system(size: 90))
            
    }
}

struct CircularImg_Previews: PreviewProvider {
    static var previews: some View {
        CircularImg()
    }
}
