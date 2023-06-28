//
//  agenda.swift
//  evermore
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct agenda: View {
    var body: some View {
        
        NavigationStack {
            VStack {
                
                Text("Agenda")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                NavigationLink(destination: tasks()) {
                    Text("tasks")
                }
                NavigationLink(destination: events()) {
                    Text("events")
                }
                NavigationLink(destination: welcome()) {
                    Text("back to homepage")
                }
                Spacer()
                Text("e v e r m o r e . ")
                    .fontWeight(.bold)
               
            }
        }
    }
}

struct agenda_Previews: PreviewProvider {
    static var previews: some View {
        agenda()
    }
}
