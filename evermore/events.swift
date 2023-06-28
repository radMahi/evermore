//
//  events.swift
//  evermore
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct events: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: scheduling()) {
                    Text("schedule events")
                }
                NavigationLink(destination: welcome()) {
                    Text("back to homepage") }
            }
            NavigationLink(destination: agenda()) {
                Text("back to agenda") }
        }
    }
}

struct events_Previews: PreviewProvider {
    static var previews: some View {
        events()
    }
}
