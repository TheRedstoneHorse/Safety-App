//
//  CheckDetailView.swift
//  Safety App Project
//
//  Created by Dhruv Dingari on 3/27/21.
//

import SwiftUI

struct SafetyAppFormView: View {
    var checklist: Checklist
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(checklist.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding([.top, .leading])
            
            Text(checklist.description)
                .font(.subheadline)
                .fontWeight(.light)
                .padding([.leading, .bottom])
            
            Divider()
            ScrollView {
                ForEach (0..<checklist.form.count, id: \.self) { index in
                    HStack {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            if 1 == 1 {
                                Image(systemName: "checkmark")
                                    .padding()
                                    .colorInvert()
                            }
                        })
                        
                        Spacer()
                        
                        Text(checklist.form[index])
                            .padding()
                    }
                }
            }
        }
    }
}

struct SafetyAppFormView_Previews: PreviewProvider {
    static var previews: some View {
        let model = ChecklistModel()
        
        SafetyAppFormView(checklist: model.checklists[0])
    }
}
