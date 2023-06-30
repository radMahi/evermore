//
//  worriedJournalDate.swift
//  evermore
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct worriedJournalDate: View {
    @State var worriedPrompts = ["Write about potential strategies for managing or alleviating your worries.", "Write about the impact of worry on your daily life and well-being.", "Write about a specific situation or event that is causing you worry or anxiety."]
    
     @State private var worriedText = ""
     @State var randomPrompt = ""
     
     func pickStudent() -> String {
         // func that returns string
         let random = Int.random(in: 0..<3)
         // random num generator
         let worried = worriedPrompts[random]
         // happy is assigned to a random sentence in happyPrompts array
         return worried
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
                TextField("Type your response here", text: $worriedText, axis: .vertical)
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


struct worriedJournalDate_Previews: PreviewProvider {
    static var previews: some View {
        worriedJournalDate()
    }
}
