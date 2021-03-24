//
//  Announcement.swift
//  Safety App Project
//
//  Created by Dhruv Dingari on 3/18/21.
//

import Foundation

struct Announcment: Decodable, Identifiable {
    var id: String
    var title: String
    var body: String
}
