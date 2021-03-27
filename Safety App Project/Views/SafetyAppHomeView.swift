//
//  SafetyAppHomeView.swift
//  Safety App Project
//
//  Created by Dhruv Dingari on 3/18/21.
//

import SwiftUI

struct SafetyAppHomeView: View {
    
    @ObservedObject var model = AnnouncementModel()
    
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack {
                Text("Announcments")
                    .bold()
                    .padding(.leading)
                    .padding(.top, 40)
                    .font(.largeTitle)
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Add")
                        .padding(30)
                })
            }
            
            
            List(model.announcments) { r in
               VStack(alignment: .leading) {
                    Text(r.title)
                        .font(.title)
                    Text(r.body)
                }
            }
        }
    }
}

struct SafetyAppHomeView_Previews: PreviewProvider {
    static var previews: some View {
        SafetyAppHomeView()
    }
}
