//
//  SafetyAppChecklistView.swift
//  Safety App Project
//
//  Created by Dhruv Dingari on 3/25/21.
//

import SwiftUI

struct SafetyAppChecklistView: View {
    
    @ObservedObject var model = ChecklistModel()
    
    var body: some View {
        NavigationView {
            List(model.checklists) { r in
                
                NavigationLink(
                    destination: SafetyAppFormView(checklist: r),
                    label: {
                        Text(r.name)
                            .font(.title)
                            .bold()
                            .padding()
                    })
                
            }
            .navigationTitle("All Checklists")
        }
    }
}

struct SafetyAppChecklistView_Previews: PreviewProvider {
    static var previews: some View {
        SafetyAppChecklistView()
    }
}
