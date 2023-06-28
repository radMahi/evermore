//
//  scheduling.swift
//  evermore
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct scheduling: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: tasks()) {
                    Text("back to tasks")
                }
                NavigationLink(destination: events()) {
                    Text("back to events")
                }
            }
        }
    }
}

struct scheduling_Previews: PreviewProvider {
    static var previews: some View {
        scheduling()
    }
}
