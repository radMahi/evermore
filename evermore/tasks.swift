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
            ZStack {
                
                Color(red: 126/255, green: 154/255, blue: 132/255_)
                    .ignoresSafeArea()
                
                Image("pine")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                VStack {
                    Text("t a s k s:")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    Spacer()
                    
                    NavigationLink(destination: scheduling()) {
                        Text("schedule tasks")
                    }
                    NavigationLink(destination: welcome()) {
                        Text("back to homepage")
                    }
                    NavigationLink(destination: agenda()) {
                        Text("back to agenda")
                        
                    }
                    Spacer();
                    Text("e v e r m o r e.")
                    .font(. largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                }
            }
        }
    }
    struct tasks_Previews: PreviewProvider {
        static var previews: some View {
            tasks()
        }
    }
}
