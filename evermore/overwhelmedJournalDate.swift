//
//  overwhelmedJournalDate.swift
//  evermore
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct overwhelmedJournalDate: View {
    @State var overwhelmedPrompts = ["Write about all the tasks and reponsibilities that are currently weighing on your mind.", "Reflect on a recent situation or event that triggered a sense of overwhelm.", "Describe the physical sensations you experience when you are overwhelmed."]
    
    @State private var overwhelmedText = ""
    @State var randomPrompt = ""
    
    func pickStudent() -> String {
        // func that returns string
        let random = Int.random(in: 0..<3)
        // random num generator
        let overwhelmed = overwhelmedPrompts[random]
        // happy is assigned to a random sentence in happyPrompts array
        return overwhelmed
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
                TextField("Type your response here", text: $overwhelmedText, axis: .vertical)
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
struct overwhelmedJournalDate_Previews: PreviewProvider {
    static var previews: some View {
        overwhelmedJournalDate()
    }
}
