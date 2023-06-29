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
            ZStack {
                
                Color(red: 126/255, green: 154/255, blue: 132/255_)
                    .ignoresSafeArea()
       
                Image("pineTree")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                
                VStack {
                    Text("Welcome:")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    Spacer() .frame(height:50)
                        Text("Priority Tasks:")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                    ZStack {
                        Spacer()
                            .frame(width:350).frame(height:75)
                            .background(Rectangle()
                                .foregroundColor(Color(red: 160/225, green: 182/225, blue: 160/225)))
                                        .cornerRadius(15)
                                        .shadow(radius: 15)
                        NavigationLink(destination: journal()) {
                            Text("j o u r n a l i n g")
                        }.font(.title).fontWeight(.bold)
                            .foregroundColor(Color.white)
                        
                    }
                    ZStack {
                        
                        Spacer()
                            .frame(width:350).frame(height:75)
                            .background(Rectangle()
                                .foregroundColor(Color(red: 160/225, green: 182/225, blue: 160/225)))
                                        .cornerRadius(15)
                                        .shadow(radius: 15)
                        NavigationLink(destination: agenda()) {
                            Text("a g e n d a")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                            
                        }
                    
                        
                    }
                   
                    Spacer();
                    Text("e v e r m o r e.")
                    .font(.                                                     largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
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

