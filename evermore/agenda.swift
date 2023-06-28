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
                NavigationLink(destination: tasks()) {
                    Text("tasks")
                }
                NavigationLink(destination: events()) {
                    Text("events")
                }
                NavigationLink(destination: welcome()) {
                    Text("back to homepage")
                }
            }
        }
    }
}

struct agenda_Previews: PreviewProvider {
    static var previews: some View {
        agenda()
    }
}
