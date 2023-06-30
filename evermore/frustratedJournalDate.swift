//
//  frustratedJournalDate.swift
//  evermore
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct frustratedJournalDate: View {
    @State var excitedPrompts = ["Write about an upcomig event or opportunity that you are excited about.", "Reflect on a recent accomplishment or milestone that filled you with excitement.", "Write about a personal goal or aspiration that excites you."]
    
     @State private var excitedText = ""
     @State var randomPrompt = ""
     
     func pickStudent() -> String {
         // func that returns string
         let random = Int.random(in: 0..<3)
         // random num generator
         let excited = excitedPrompts[random]
         // happy is assigned to a random sentence in happyPrompts array
         return excited
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
                TextField("Type your response here", text: $excitedText, axis: .vertical)
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

struct frustratedJournalDate_Previews: PreviewProvider {
    static var previews: some View {
        frustratedJournalDate()
    }
}
