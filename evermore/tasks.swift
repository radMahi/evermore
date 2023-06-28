//
//  tasks.swift
//  evermore
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct tasks: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: scheduling()) {
                    Text("schedule tasks")
                }
                    NavigationLink(destination: welcome()) {
                        Text("back to homepage")
                }
                NavigationLink(destination: agenda()) {
                    Text("back to agenda")
                }
            }
        }
    }
}
struct tasks_Previews: PreviewProvider {
    static var previews: some View {
        tasks()
    }
}
