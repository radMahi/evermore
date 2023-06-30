//
//  sadJournalDate.swift
//  evermore
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct sadJournalDate: View {
    @State var sadPrompts = ["Write about a recent loss or disappointment that has affected you deeply.", "Reflect on a time when you felt alone or isolated.", "Describe a time when you felt like you failed or made a singificant mistake, and explore the emotions that accompanied it."]
    
    @State private var sadText = ""
    @State var randomPrompt = ""

    
    func pickStudent() -> String {
        // func that returns string
        let random = Int.random(in: 0..<3)
        // random num generator
        let sad = sadPrompts[random]
        // happy is assigned to a random sentence in happyPrompts array
        return sad
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
                TextField("Type your response here", text: $sadText, axis: .vertical)
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
struct sadJournalDate_Previews: PreviewProvider {
    static var previews: some View {
        sadJournalDate()
    }
}
