//
//  AnnouncementModel.swift
//  Safety App Project
//
//  Created by Dhruv Dingari on 3/18/21.
//

import Foundation

class AnnouncementModel: ObservableObject {
    
    @Published var announcments = [Announcment]()
    
    init() {
        let pathString = Bundle.main.path(forResource: "announcments", ofType: "json")
        
        if let path = pathString {
            let myURL = URL(fileURLWithPath: pathString!)
        
            do {
                let data = try Data(contentsOf: myURL)
                let decoder = JSONDecoder()
                let announcementData = try decoder.decode([Announcment].self, from: data)
                    
                announcments = announcementData
            }
            catch {
                print(error)
            }
        }
    }
}
