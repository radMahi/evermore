//
//  anxiousJournalDate.swift
//  evermore
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct anxiousJournalDate: View {
    @State var proudPrompts = ["Reflect on a recent accomplishment or milestone that you are proud of." , "Reflect on a time when you demonstrated resilience in the face of adversity.", "Write about a time when you took a risk or stepped outside of your comfort zone."]
     @State private var proudText = ""
     @State var randomPrompt = ""
     
     func pickStudent() -> String {
         // func that returns string
         let random = Int.random(in: 0..<3)
         // random num generator
         let proud = proudPrompts[random]
         // happy is assigned to a random sentence in happyPrompts array
         return proud
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
                TextField("Type your response here", text: $proudText, axis: .vertical)
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

struct anxiousJournalDate_Previews: PreviewProvider {
    static var previews: some View {
        anxiousJournalDate()
    }
}
