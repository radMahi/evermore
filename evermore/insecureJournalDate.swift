//
//  insecureJournalDate.swift
//  evermore
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct insecureJournalDate: View {
    @State var insecurePrompts = ["Write a list of your strenghts, talents, and accomplishments.", "Write about a specific aspect of yourself that you feel insecure about.", "Reflect on a specific situation or interaction that triggered feelings of insecurity."]
    
    @State private var insecureText = ""
    @State var randomPrompt = ""
    
    func pickStudent() -> String {
        // func that returns string
        let random = Int.random(in: 0..<3)
        // random num generator
        let insecure = insecurePrompts[random]
        // happy is assigned to a random sentence in happyPrompts array
        return insecure
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
                TextField("Type your response here", text: $insecureText, axis: .vertical)
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

struct insecureJournalDate_Previews: PreviewProvider {
    static var previews: some View {
        insecureJournalDate()
    }
}
