//
//  happyJournalDate.swift
//  evermore
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct happyJournalDate: View {
    @State var happyPrompts = ["Describe a moment from today that made you smile.", "Write about a small act of kindness you witnessed or received recently.", "List three things you are grateful for right now and explain why they bring you joy."]
    
    @State private var happyText = ""
    @State var randomPrompt = ""
    
    func pickStudent() -> String {
        // func that returns string
        let random = Int.random(in: 0..<3)
        // random num generator
        let happy = happyPrompts[random]
        // happy is assigned to a random sentence in happyPrompts array
        return happy
    }
    var body: some View {
        ZStack {
            Spacer()
            
            
            Color (red: 126/255, green: 154/255, blue: 132/255).ignoresSafeArea()
            
            //randomPrompt calls the function
            
            VStack {
                Spacer()
                    .frame(height: 50)
                Text(randomPrompt)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Spacer()
                TextField("Type your response here", text: $happyText, axis: .vertical)
                    .lineLimit(nil)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Spacer()
                
            }
            .padding()
            
        }.onAppear {
            randomPrompt = pickStudent ()
        }
    }
}
        
        
        
struct happyJournalDate_Previews: PreviewProvider {
    static var previews: some View {
        happyJournalDate()
    }
}
