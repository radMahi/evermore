//
//  ContentView.swift
//  evermore
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: welcome()) {
                    Text("Sign Up")
                    
                }
            }
        
                
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
