//
//  ContentView.swift
//  evermore
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreeen = false
    
    var body: some View {
        NavigationStack {
            NavigationView {
                ZStack{
                    Color(red: 126/255, green: 154/255,blue: 132/255).ignoresSafeArea()
                    Image("pineTree")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                    
                    
                        VStack{
                        Spacer(minLength:12.0)
                            
                        Text("Login")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding()
                            TextField("", text: $username, prompt: Text("Username").foregroundColor(Color.white))
                            .padding()
                            .foregroundColor(Color.white)
                            .accentColor(Color.white)
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.25))
                            .cornerRadius(10)
                            .border(.red, width: CGFloat(wrongUsername))
                        
                            SecureField("", text: $password, prompt: Text("Password").foregroundColor(Color.white))
                            .padding()
                            .frame(width:300,height:50)
                            .background(Color.black.opacity(0.25))
                            .cornerRadius(10)
                            .border(.red, width: CGFloat(wrongPassword))
                        
                        Button("Login"){
                            //Authenticate user
                        }
                        .foregroundColor(.black)
                        .frame(width:300, height:50)
                        .background(Color.white)
                        .cornerRadius(10)
            
                        .navigationBarHidden(true)
                        
                        Spacer()
                        Text("e v e r m o r e.")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.top, 28.0)
                            
                    }
                  
                }
                    
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
