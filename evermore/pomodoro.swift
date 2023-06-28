//
//  pomodoro.swift
//  evermore
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct pomodoro: View {
    var body: some View {
        
        NavigationStack {
            
            VStack {
                NavigationLink(destination: welcome()) {
                    Text("back to homepage")
            }
        }

        }
    }
}

struct pomodoro_Previews: PreviewProvider {
    static var previews: some View {
        pomodoro()
    }
}
