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
            ZStack {
                Color(red: 126/255, green: 154/255, blue: 132/255) .ignoresSafeArea()
                Image("tree")
                
                
                
                
                
                VStack {
                    
                    Text("a g e n d a")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    NavigationLink(destination: tasks()) {
                        Text("t a s k s")
                    .font(.title).fontWeight(.bold)
                        .foregroundColor(Color.white)
                            .frame(width:350).frame(height:75)
                            .background(Rectangle()
                                .foregroundColor(Color(red: 160/225, green: 182/225, blue: 160/225)))
                                        .cornerRadius(15)
                                        .shadow(radius: 15)

                    }
                    NavigationLink(destination: events()) {
                        Text("e v e n t s")
                    .font(.title).fontWeight(.bold)
                        .foregroundColor(Color.white)
                            .frame(width:350).frame(height:75)
                            .background(Rectangle()
                                .foregroundColor(Color(red: 160/225, green: 182/225, blue: 160/225)))
                                        .cornerRadius(15)
                                        .shadow(radius: 15)

                    }
                    NavigationLink(destination: welcome()) {
                        Text("b a c k  t o  h o m e p a g e")
                    .font(.title).fontWeight(.bold)
                        .foregroundColor(Color.white)
                            .frame(width:350).frame(height:75)
                            .background(Rectangle()
                                .foregroundColor(Color(red: 160/225, green: 182/225, blue: 160/225)))
                                        .cornerRadius(15)
                                        .shadow(radius: 15)

                    }
                    Spacer()
                    Text("e v e r m o r e . ")
                        .fontWeight(.bold)
                    
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
