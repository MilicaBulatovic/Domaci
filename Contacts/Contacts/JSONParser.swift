//
//  JSONParser.swift
//  Contacts
//
//  Created by obuke on 25/12/2022.
//

import Foundation

let loadContacts: [Contact] = load("contacts")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError()
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError()
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError()
    }
}

