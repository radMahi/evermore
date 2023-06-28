//
//  welcome.swift
//  evermore
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct welcome: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: agenda()) {
                    Text("agenda")
                    
                }
                NavigationLink(destination: journal()) {
                    Text("journaling")
                }
                
                NavigationLink(destination: pomodoro()) {
                    Text("pomodoro")
                    
                }
            }
        }
    }
}
    
    struct welcome_Previews: PreviewProvider {
        static var previews: some View {
            welcome()
        }
    }

