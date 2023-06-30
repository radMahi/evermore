//
//  journal.swift
//  evermore
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct journal: View {
    var body: some View {
        NavigationStack {
            
            ZStack {
                Spacer()
                
                
                Color (red: 126/255, green: 154/255, blue: 132/255).ignoresSafeArea()
                
                
                
                VStack {
                    
                    Text("I am feeling...")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                    
                    NavigationLink(destination: happyJournalDate()) {
                        Text("happy")
                            .font(.title)
                            .foregroundColor(Color.white)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 160/225, green: 182/225, blue: 160/225))
                    
                    NavigationLink(destination: sadJournalDate()) {
                        Text("sad")
                            .font(.title)
                            .foregroundColor(Color.white)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 160/225, green: 182/225, blue: 160/225))
                    
                    NavigationLink(destination: overwhelmedJournalDate()) {
                        Text("overwhelmed")
                            .font(.title)
                            .foregroundColor(Color.white)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 160/225, green: 182/225, blue: 160/225))
                    
                    NavigationLink(destination: insecureJournalDate()) {
                        Text("insecure")
                            .font(.title)
                            .foregroundColor(Color.white)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 160/225, green: 182/225, blue: 160/225))
                    
                    //proud navigation
                    NavigationLink(destination: anxiousJournalDate()) {
                        Text("proud")
                            .font(.title)
                            .foregroundColor(Color.white)
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 160/225, green: 182/225, blue: 160/225))
                    
                    NavigationLink(destination: worriedJournalDate()) {
                        Text("worried")
                            .font(.title)
                            .foregroundColor(Color.white)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 160/225, green: 182/225, blue: 160/225))
                    
                    NavigationLink(destination: frustratedJournalDate()) {
                        Text("excited")
                            .font(.title)
                            .foregroundColor(Color.white)
                }
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 160/225, green: 182/225, blue: 160/225))
                    
                //self.randomPrompt = pickStudent()
                
    
                    
                }
                
            }
        }
    }
}
struct journal_Previews: PreviewProvider {
    static var previews: some View {
        journal()
    }
}
