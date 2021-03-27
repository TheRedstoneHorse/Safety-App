//
//  ChecklistModel.swift
//  Safety App Project
//
//  Created by Dhruv Dingari on 3/25/21.
//

import Foundation

class ChecklistModel: ObservableObject {
    
    @Published var checklists = [Checklist]()
    
    init() {
        let pathString = Bundle.main.path(forResource: "checklists", ofType: "json")
        
        if let path = pathString {
            let myURL = URL(fileURLWithPath: pathString!)
        
            do {
                let data = try Data(contentsOf: myURL)
                let decoder = JSONDecoder()
                let checklistData = try decoder.decode([Checklist].self, from: data)
                    
                checklists = checklistData
            }
            catch {
                print(error)
            }
        }
    }
}
