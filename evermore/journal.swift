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
            VStack {
                NavigationLink(destination: happyJournalDate()) {
                    Text("happy")
                }
                NavigationLink(destination: sadJournalDate()) {
                    Text("sad")
                }
                NavigationLink(destination: overwhelmedJournalDate()) {
                    Text("overwhelmed")
                }
                NavigationLink(destination: insecureJournalDate()) {
                    Text("insecure")
                }
                NavigationLink(destination: anxiousJournalDate()) {
                    Text("proud")
                }
                NavigationLink(destination: worriedJournalDate()) {
                    Text("worried")
                }
                NavigationLink(destination: frustratedJournalDate()) {
                    Text("excited")
                    
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
