//
//  Checklist.swift
//  Safety App Project
//
//  Created by Dhruv Dingari on 3/25/21.
//

import Foundation

struct Checklist: Decodable, Identifiable{
    var id: String
    var name: String
    var description: String
    var form: [String]
}
